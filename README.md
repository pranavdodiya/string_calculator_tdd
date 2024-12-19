# String Calculator

A simple Ruby application to perform addition of numbers given as a string. It supports multiple delimiters, ignores numbers greater than 1000, and raises errors for negative numbers. The application processes the input string and returns the sum of the numbers.

## Features

- **Handles Empty String**: Returns `0` for an empty string.
- **Single or Multiple Numbers**: Can add single or multiple numbers separated by commas or new lines.
- **Custom Delimiters**: Supports custom delimiters, including multi-character delimiters.
- **Negative Numbers**: Throws an exception if negative numbers are passed.
- **Ignores Numbers Greater Than 1000**: Any number greater than 1000 is ignored in the sum.
- **Supports Multi-Character Delimiters**: Custom delimiters of any length are supported.


## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/pranavdodiya/string_calculator_tdd.git

2. Navigate to the Project Directory
   ```bash
   cd string_calculator_tdd

3. Install Dependencies
   ```bash
   bundle install

## Usage

- **Basic Usage:**
   To use the StringsCalculator, simply call the add method with a string of comma-separated numbers.
   ```bash
   calculator = StringsCalculator.new
   result = calculator.add("1,2")
   puts result  # Outputs: 3

- **Custom Delimiters:**
   You can define a custom delimiter by using the format //[delimiter]\n at the start of the string.
   ```bash
   calculator.add("//;\n1;2;3") # Returns: 6

- **Variable-Length Delimiters:**
   Custom delimiters can have any length when enclosed in square brackets.
   ```bash
   calculator.add("//[***]\n1***2***3") # Returns: 6

- **Multiple Custom Delimiters:**
   It is possible to specify multiple delimiters by enclosing each in square brackets.
   ```bash
   calculator.add("//[***][%%]\n1***2%%3") # Returns: 6

- **Handling Newline Characters:**
   The calculator also supports newline characters between numbers.
   ```bash
   calculator.add("1\n2,3") # Returns: 6

- **Ignoring Large Numbers:**
   Numbers greater than 1000 are excluded from the calculation.
   ```bash
   calculator.add("2,1001") # Returns: 2

- **Handling Negative Numbers:**
   Providing negative numbers will result in an error, showing the offending numbers in the message.
   ```bash
   calculator.add("-1,2,3") 
   # Raises an ArgumentError: Negative numbers are not allowed: -1

## Testing

- **To run the test suite, use RSpec**
   ```bash
   bundle exec rspec

## Ruby and Rails Versions

- **Ruby**: 2.6.6 
- **Rails**: 5.2.2 
