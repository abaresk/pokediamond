import copy
import io
import re
from typing import List, Text, TextIO, Tuple

def read_until_char(f: TextIO, c: str) -> Text:
    output = []
    while True:      
        char = f.read(1)
        output.append(char)
        if char == c:
            break
    return "".join(output)

def read_until_oneof(f: TextIO, chars: List[str]) -> Tuple[Text, str]:
    output = []
    while True:
        char = f.read(1)
        output.append(char)
        if char in chars:
            break
    return "".join(output), char

def read_until_closing_bracket(f: TextIO) -> Text:
    output = []
    brackets = 0
    char = ''
    while not(char == '}' and brackets == 0):
        char = f.read(1)
        if not char:
            break

        if char == '{':
            brackets += 1
        elif char == '}':
            brackets -= 1
        output.append(char)
    return "".join(output)

# Input: declaration
def is_function(text: Text) -> bool:
    if not text.endswith(')'):
        return False

    parens = 0
    f = io.StringIO(text[::-1])
    while True:
        char = f.read(1)
        if char == ')':
            parens += 1
        elif char == '(':
            parens -= 1
        if char == '(' and parens == 0:
            break
    
    # Next token should be a word
    rest = f.read()
    # This is reversed, which reduces readability
    return re.compile("^[a-zA-Z0-9_]*[a-zA-Z_]").match(rest)

def remove_comments(text: Text) -> Text:
    # remove all occurrences streamed comments (/*COMMENT */) from string
    text = re.sub(re.compile(
        r"/\*.*?\*/", re.DOTALL), "", text)
    # remove all occurrence single-line comments (//COMMENT\n ) from string
    text = re.sub(re.compile("//.*?\n"), "", text)
    return text

def remove_empty_lines(f: TextIO) -> Text:
    output = []
    for line in f.readlines():
        if re.compile(r"^\s*$").match(line):
            continue
        output.append(line)
    return "".join(output)

def consume_anyof(f: TextIO, chars: List[str]):
    while peek(f) in chars:
        f.read(1)

def peek(f: TextIO) -> str:
    pos = f.tell()
    char = f.read(1)
    f.seek(pos)
    return char

def toText(f: TextIO) -> Text:
    f2 = copy.copy(f)
    return f2.read()

# Includes macros, includes, conditional compilation, pragmas
# Starts with "#"
# Continued by "\"
# Terminated by newline
class Directive():
    def __init__(self, content):
        self.content = content
    
    # Does not modify the input
    @staticmethod
    def match(contents: Text) -> bool:
        return contents.startswith("#")

    @staticmethod
    def consume(f: TextIO) -> Text:
        output = []
        line = f.readline()
        output.append(line)
        while line.endswith("\\"):
            line = f.readline()
            output.append(line)
        return "\n".join(output)

# Starts with #include
# Terminated by newline
class Include(Directive):
    def __init__(self, content):
        super().__init__(content)
        self.content = content

    @staticmethod
    def match(contents: Text) -> bool:
        return contents.startswith("#include")

    @staticmethod
    def consume(f: TextIO) -> Text:
        return super(Include, Include).consume(f)

# Starts with "struct", "union" or "enum", optionally preceded by "typedef",
# followed by name and opening "{"
# Terminated by ";" after closing "}" and an optional word
class Type():
    types = ["struct", "union", "enum"]
    def __init__(self, content):
        self.content = content

    @staticmethod
    def match(contents: Text) -> bool:
        words = contents.split()
        if words[0] == "typedef" and words[1] in Type.types:
            return True
        elif words[0] in Type.types:
            return True
        return False

    @staticmethod
    def consume(f: TextIO) -> Text:
        output = read_until_closing_bracket(f)
        output += read_until_char(f, ';')
        return output

# Terminated by closing "}"
class Function():
    def __init__(self, content):
        self.content = content

    @staticmethod
    def match(contents: Text) -> bool:
        f = io.StringIO(contents)
        _, char = read_until_oneof(f, ['{', '=', ';'])
        return char == '{'

    @staticmethod
    def consume(f: TextIO) -> Text:
        output = read_until_closing_bracket(f)
        return output

class Data():
    def __init__(self, content):
        self.content = content

    @staticmethod
    def match(contents: Text) -> bool:
        f = io.StringIO(contents)
        _, char = read_until_oneof(f, ['{', '=', ';'])
        return char == '='

    @staticmethod
    def consume(f: TextIO) -> Text:
        return read_until_char(f, ';')

# Terminated by ";"
class FnDeclaration():
    def __init__(self, content):
        self.content = content

    @staticmethod
    def match(contents: Text) -> bool:
        f = io.StringIO(contents)
        text, char = read_until_oneof(f, ['{', '=', ';'])
        if char != ';':
            return False
        return is_function(text[:-1])

    @staticmethod
    def consume(f: TextIO) -> Text:
        return read_until_char(f, ';')

# NOTE: extern is a type of data declaration
# Terminated by ";"
class DataDeclaration():
    def __init__(self, content):
        self.content = content

    @staticmethod
    def match(contents: Text) -> bool:
        f = io.StringIO(contents)
        text, char = read_until_oneof(f, ['{', '=', ';'])
        if char != ';':
            return False
        return not is_function(text[:-1])

    @staticmethod
    def consume(f: TextIO) -> Text:
        return read_until_char(f, ';')

# Anything else
class Other():
    def __init__(self, contents):
        self.contents = contents

    @staticmethod
    def match(contents: Text) -> bool:
        return True

    @staticmethod
    def consume(f: TextIO) -> Text:
        return f.readline()

# How to parse:
# 1. Check first line
#   * Directive
#   * Struct

# Read until "{", "=", or ";"
# If definition end == ";":
#   Declaration: Check if function or data
# Else if definition end == "=":
#   Data initialization: Tally "{}". Terminate at ";" after
#   brace_count == 0.
# Else:
#   Function definition: Tally "{}". Terminate once brace_count == 0.

# Function vs data declaration:
# Function declarations end with a parameter list and have a word (no "(" or ")")
# right before the parameter list parens.

class CFile():
    sections = [Include, Directive, Type, Function,
                Data, FnDeclaration, DataDeclaration, Other]
    def __init__(self, filename):
        self.filename = filename
        with open(self.filename, 'r') as file:
            self.contents = io.StringIO(file.read())

    # Group file into blocks above 
    # NOTE: After a match, make sure to consume whitespace until next text
    def parse_file(self) -> List:
        file_sections = []
        while peek(self.contents) != '':
            text = toText(self.contents)
            for section in self.sections:
                if section.match(text):
                    text = section.consume(self.contents)
                    newSect = section(text)
                    print(newSect)
                    print(newSect.content)
                    file_sections.append(section(text))
                    break
            # Consume whitespace
            consume_anyof(self.contents, [' ', '\t', '\r', '\n'])
        return file_sections

    def process(self):
        text = remove_comments(self.contents.read())
        text = remove_empty_lines(io.StringIO(text))
        self.contents = io.StringIO(text)

        file_sections = self.parse_file()
        print(file_sections)
