class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    # Splits by commas or new lines, converts to integers, and sums
    numbers.split(/,|\n/).map(&:to_i).sum
  end
end
