sum_of_squares = ((1..100).map { |i| i * i }).inject(&:+)
square_of_sums = (1..100).inject(&:+)**2
p square_of_sums - sum_of_squares
