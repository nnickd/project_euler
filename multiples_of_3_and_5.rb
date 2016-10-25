multiples = (1...1000).select { |n| (n % 3).zero? || (n % 5).zero? }
sum = multiples.inject(&:+)
p sum
