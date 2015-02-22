require 'rspec'
require '../lib/palindrome'

describe 'A two_digits_palindrome from a 3-digit number' do

  two_digits_palindrome = Palindrome.new
  three_digits_palindrome = Palindrome.new(3)

  it 'should reverse the number 1234 to 4321' do
    expect(two_digits_palindrome.reverse_number(1234)).to eq 4321
  end

  it 'should reverse the number 9876 to 6789' do
    expect(two_digits_palindrome.reverse_number(9876)).to eq 6789
  end

  it 'should return true if it is a two_digits_palindrome' do
    expect(two_digits_palindrome.is_palindrome(9009)).to be true
  end

  it 'should count a 2 digit number until it gets a two_digits_palindrome' do
    expect(two_digits_palindrome.find_palindrome.include?(9009)).to be true
  end

  it 'should count a 3 digit number until it gets a two_digits_palindrome' do
    expect(three_digits_palindrome.find_biggest_palindrome).to eq 906609
  end
end