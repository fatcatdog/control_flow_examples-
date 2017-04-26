# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  letters = ("a".."z").to_a
  our_str = str.chars
  x = our_str.select {|x| !letters.include?(x)}
  x.join
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  n = str.length / 2
  if str.length % 2 == 0
    str[(n-1)..(n)]
  else
    str[n]
  end
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
letters = str.downcase.chars
count = 0
letters.each do |x|
  if VOWELS.include?(x)
    count += 1
  end
end
  count
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
(1..num).reduce(:*)
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  join = ""
    idx = 0
    while idx < arr.length
      join = join + arr[idx]
    if idx != arr.length - 1 # Don't want to add the separator after the last element
      join = join + separator
    end
    idx = idx + 1
  end
  join
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"


def weirdcase(string)
  result = []
  string.split(' ').each do |word|
    i = 0
    while i < word.length
      word[i] = if i.odd?
          word[i].upcase
        else
          word[i].downcase
        end
      i += 1
    end
    result << word
  end
  result.join
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
new_sent = []
words = str.split(" ")
words.each do |x|
  if x.length > 4
    new_sent << x.reverse
  else
    new_sent << x
  end
end
  new_sent.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  new_sent = []
(1..n).each do |x|
  if x % 15 == 0
    new_sent << "fizzbuzz"
  elsif x % 5 == 0
    new_sent << "buzz"
  elsif x % 3 == 0
    new_sent << "fizz"
  else
    new_sent << x
  end
  end
   new_sent
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  arr.reverse
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  if num < 2
    false
  else
  facs = (2..(num - 1)).select {|x| num % x == 0 }
  facs.empty?
end
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  (1..num).select {|x| num % x == 0 }
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  facs =  (1..num).select {|x| num % x == 0 }
  facs.select {|x| prime?(x)}
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  (prime_factors(num)).length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  odd = arr.select {|x| x.odd? }
  even = arr.select {|x| x.even? }
  if even.length > odd.length
    odd[0]
  else
    even[0]
  end
end
