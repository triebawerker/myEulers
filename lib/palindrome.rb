class Palindrome

  @start_number = 0
  @end_number = 0

  def initialize (digits = 2)
    if digits == 2
      @start_number = 11
      @end_number = 99

    elsif digits == 3
      @start_number = 111
      @end_number = 999
    end
  end

  def reverse_number (number)
    number.to_s.chars.map(&:to_i).reverse.join.to_i
  end

  def is_palindrome(number)
    if reverse_number(number) == number
      true
    end
  end

  def find_palindrome
    result = []
      (@start_number..@end_number).each do |i|
        (@start_number..@end_number).each do |j|
          product = i * j
          if product > 10 && is_palindrome(product)
            result << product
          end
        end
      end
    result
  end
  def find_biggest_palindrome
    palindromes = find_palindrome
    palindromes.reduce(0) do |sum, value|
      value > sum ? value : sum
    end
  end
end