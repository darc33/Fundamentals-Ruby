puts "I'm cool" if true #it's possible to put if statement in one line if we use the correct order
puts "I'm not hungry" unless false #it's possible to do the same with unless 

#TERNARY (replace if/else statement)
puts 5 < 3 ? "\n5 is less than 3!" : "\n5 isn't less than 3." #The ternary has this syntaxes: boolean ? Do this if true : Do this if false

#CASE STATEMENT
puts "\nHello there!"
greeting = gets.chomp

case greeting
  when "English"
  	puts "Hello!"
  when "French"
  	puts "Bonjour!"
  when "German"
  	puts "Guten Tag!"
  when "Finnish"
  	puts "Haloo!"
  else
  	puts "I don't kwno that language!"
end

puts "\n What's your favorite language?"
language = gets.chomp

case language
  when "Ruby" then puts "Ruby is great for web apps!"
  when "Python" then  puts "Python is great for science."
  when "JavaScript" then puts "JavaScript makes websites awesome."
  when "HTML" then puts "HTML is what websites are made of!"
  when "CSS" then puts "CSS makes websites pretty."
  else puts "I don't know that language!"
end

#CONDITIONAL ASSIGMENT
favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle" #||= assign a variable if it hasn't been already assigned 
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book, "\na"

#Print just even numbers

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each { |x| puts x if x % 2 == 0}
puts "\n"
#REPLACE OF FOR STATEMENT
"L".upto("P") { |letter| puts letter.upcase} #.upto and .downto replace for if you know the exact range of values

#SHORTCUTS << replace concatenation

alphabet = ["a", "b", "c"]
puts "\n", alphabet << "d" #alphabet.push("d")

caption = "\nA giraffe surrounded by "
puts caption << "weezards!" # caption += "weezards!"

#REFACTORING PROYECT

=begin
This is the code to refactoring:
$VERBOSE = nil    
require 'prime'   # This is a module.

def first_n_primes(n)

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end
  
  prime_array = [] if prime_array.nil?
  
  prime = Prime.new
  for num in (1..n)
    prime_array.push(prime.next)
  end
  return prime_array
end

first_n_primes(10)
=end

require 'prime'   # This is a module.

def first_n_primes(n)
  return "n must be an integer." unless n.is_a? Integer
  return "n must be greater than 0." if n <= 0
  Prime.first n
end

print "\n", first_n_primes(10)