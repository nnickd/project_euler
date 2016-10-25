fib = [1, 2]
fib << fib[-1] + fib[-2] while fib[-1] < 4_000_000
p fib.select!(&:even?).inject(&:+)
