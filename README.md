# String Calculator

This Ruby on Rails project implements a simple string calculator with the following features:

- Accepts a string of numbers separated by commas or newlines as input.
- Returns the sum of the numbers as an integer.
- Supports custom delimiters specified at the beginning of the string.
- Ignores numbers greater than 1000 in the calculation.
- Raises an exception for negative numbers with a detailed message.

## Requirements

- **Ruby Version**: 2.6.6  
- **Rails Version**: 5.2.8  

## Usage

The calculator processes strings like:  
- `"1,2,3"` → Returns `6`  
- `"1\n2,3"` → Returns `6`  
- `"//;\n1;2;3"` → Returns `6`  
- `"1001,2"` → Returns `2`  
- `"1,-2"` → Raises an error: `"negative numbers not allowed: -2"`  

## Testing

RSpec is used for testing the functionality. Run the following command to execute tests:  
```bash
rspec