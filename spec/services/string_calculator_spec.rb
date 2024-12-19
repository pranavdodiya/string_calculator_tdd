require 'rails_helper'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.new.add('')).to eq(0)
    end
    
		# Returns the number itself for a single input
		it 'returns the number itself for a single number' do
			expect(StringCalculator.new.add("1")).to eq(1)
		end

		# Returns the sum for two numbers separated by a comma
		it 'returns the sum for two numbers separated by a comma' do
			expect(StringCalculator.new.add("1,2")).to eq(3)
		end

		# Handles summing a large number of numbers
		it "handles a large number of numbers" do
      numbers = (1..1000).to_a.join(",")
      expect(StringCalculator.new.add(numbers)).to eq(500500)
    end

		# Handles new lines between numbers in addition to commas
		it 'handles new lines between numbers' do
			expect(StringCalculator.new.add("1\n2,3")).to eq(6)
		end

		# Supports custom delimiters specified at the beginning of the string
		it 'supports custom delimiters' do
			expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
		end

		# Raises an exception if negative numbers are included in the input
		it 'raises an exception for negative numbers' do
			expect { StringCalculator.new.add("1,-2,3,-4") }.to raise_error("negative numbers not allowed: -2, -4")
		end
  end
end
