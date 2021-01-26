# The "Prime Prime" is a prime number that is the factor of the most numbers in a given list. Can you find the Prime prime in each list?

require 'set'

def sieve(max)
  # Set up an array with all the numbers from 0 to the max
  primes = (0..max).to_a

  # Set both the first and second positions (i.e., 0 and 1) to nil, as they
  # aren't prime.
  primes[0] = primes [1] = nil


  primes.each do |p|
    # Skip if nil
    next unless p

    # Break if we are past the square root of the max value 
    break if p * p > max

    # Start at the square of the current number, and step through.
    # Go up to the max value, by multiples of the current number, and replace
    # that value with nil in the primes array
    (p * p).step(max,p) { |m| primes[m] = nil }
  end
  primes.to_set
end

def prime_prime(array)
  # write your code here
  max = 0
  primes = sieve(array.max)
  primes.subtract(primes.take(1))
    primes.each do |i|
      counter = 0
      array.each do |n|
      counter += 1 if (n % i).zero?
      if counter > max
        max = counter
        @answer = i
      end
    end
    end
  @answer
end

puts prime_prime([2, 3, 5, 6, 9])
# => 3

puts prime_prime([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 11

puts prime_prime([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 7
