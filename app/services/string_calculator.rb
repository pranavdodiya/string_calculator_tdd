# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ",|\n"

    # Check if a custom delimiter is specified in the format //[*] or //[*][*]
    if numbers.start_with?('//[')
      delimiter = numbers.match(%r{//\[(.*?)\]\n})[1] # Extract delimiter from the string
      delimiter = Regexp.escape(delimiter) # Escape any special characters in the delimiter
      numbers = numbers.split("\n", 2).last
    elsif numbers.start_with?('//')
      delimiter = Regexp.escape(numbers[2]) # Single character delimiter
      numbers = numbers.split("\n", 2).last
    end

    # Use the delimiter to split the numbers string
    nums = numbers.split(/#{delimiter}/).map(&:to_i)

    # Reject numbers greater than 1000
    nums = nums.reject { |n| n > 1000 }

    # Check for negative numbers
    negatives = nums.select(&:negative?)
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    nums.sum
  end
end
