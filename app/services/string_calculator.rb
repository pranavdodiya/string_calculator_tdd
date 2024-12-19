class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    # Adds numbers from a string, supports custom delimiter and default comma or newline
    delimiter = ",|\n"
    if numbers.start_with?("//")
      delimiter = Regexp.escape(numbers[2])
      numbers = numbers.split("\n", 2).last
    end

    numbers.split(/#{delimiter}/).map(&:to_i).sum

  end
end
