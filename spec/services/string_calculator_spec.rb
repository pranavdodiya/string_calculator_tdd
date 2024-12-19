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
  end
end
