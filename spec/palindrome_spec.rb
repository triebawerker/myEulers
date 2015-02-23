require 'rspec'
require '../lib/palindrome'

describe 'A two_digits_palindrome from a 3-digit number' do
  it 'should count a 3 digit max_palindrome' do
    expect(three_digits_palindrome).to eq 906609
  end
end