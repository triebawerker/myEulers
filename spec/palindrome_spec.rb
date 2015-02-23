require 'rspec'
require_relative '../lib/palindrome'

describe 'Get palindrome from a 3-digit number' do
  it 'should find the max palindrome from a 3-digits number' do
    expect(three_digits_palindrome).to eq 906609
  end
end