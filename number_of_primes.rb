# Given a list of numbers, return how many are prime numbers are in the list. 
# (A prime number is a number with no factors besides 1 and itself.)

require 'set'

def number_of_primes(arr)
  # write your code here
  arr.count { |element| prime?(element) }
end

def sieve(max)
  # Set up an array with all the numbers from 0 to the max
  primes = (0..max).to_a

  # Set both the first and second positions (i.e., 0 and 1) to nil, as they
  # aren't prime.
  primes[0] = primes[1] = nil
  

  primes.each do |p|
    # Skip if nil
    next unless p

    # Break if we are past the square root of the max value 
    break if p*p > max

    # Start at the square of the current number, and step through.
    # Go up to the max value, by multiples of the current number, and replace
    # that value with nil in the primes array
    (p*p).step(max,p) { |m| primes[m] = nil }
  end
  primes.to_set
end

def prime?(num)
  sieve(10000).include?(num)
end


puts number_of_primes([2, 3, 5, 6, 9])
# => 3

puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3