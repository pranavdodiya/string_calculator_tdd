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
  end
end
