def three_digits_palindrome
  (100..999).to_a.permutation(2).map{|a, b| a*b}.select{|x| x.to_s == x.to_s.reverse}.max
end