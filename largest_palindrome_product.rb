# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(s)
  len = s.length
  left = len.even? ? s[0...(len / 2)] : s[0..(len / 2)]
  right = len.even? ? s[(len / 2)...len] : s[(len / 2)..len]
  left == right.reverse
end

def max_palindrome
  palindromes = []
  (100..999).each do |top|
    (100..999).each do |bot|
      palindromes << top * bot if palindrome? (top * bot).to_s
    end
  end
  palindromes.max
end

p max_palindrome
