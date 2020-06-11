=begin
Largest prime factor
Problem 3
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

require "prime"

puts Enumerator.new { |y|
  n = 600851475143

  Prime.each do |prime|
    break if n == 1

    q, r = n.divmod(prime)

    next if r.nonzero?

    y << prime
    n = q
    redo
  end
}.to_a.last

