class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    # Splits, converts to integers, and sums the numbers
    numbers.split(',').map(&:to_i).sum
  end
end
