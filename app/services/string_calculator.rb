# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = extract_delimiters(numbers)
    numbers = numbers.split("\n", 2).last if numbers.start_with?('//')

    nums = split_numbers(numbers, delimiter)
    nums = reject_numbers_greater_than_1000(nums)
    check_for_negative_numbers(nums)

    nums.sum
  end

  private

  def extract_delimiters(numbers)
    if numbers.start_with?('//[')
      extract_multiple_delimiters(numbers)
    elsif numbers.start_with?('//')
      Regexp.escape(numbers[2]) # Single character delimiter
    else
      ",|\n" # Default delimiters
    end
  end

  def extract_multiple_delimiters(numbers)
    delimiters = numbers.match(%r{//\[(.*?)\]\n})[1] # Extract all delimiters inside []
    delimiters.split('][').map { |delim| Regexp.escape(delim) }.join('|') # Combine them into a regex pattern
  end

  def split_numbers(numbers, delimiter)
    numbers.split(/#{delimiter}/).map(&:to_i)
  end

  def reject_numbers_greater_than_1000(numbers)
    numbers.reject { |n| n > 1000 }
  end

  def check_for_negative_numbers(numbers)
    negatives = numbers.select(&:negative?)
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  end
end
