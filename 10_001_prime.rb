# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

def prime?(num)
  factors_of(num).length == 2
end

def factors_of(number)
  (1..number).select { |n| (number % n).zero? }
end

def first_n_primes(n)
  (2..n).select { |i| i if prime? i }
end

def differs(list)
  difs = []
  list.each_cons(2) { |i| difs << i[1] - i[0] }
  difs
end


k = 600
# p factors_of(k)
p first_n_primes(k)
