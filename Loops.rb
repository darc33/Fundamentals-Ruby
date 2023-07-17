#WHILE STATEMENT
puts "WHILE:"
counter = 1
while counter < 11
  puts counter
  counter += 1 #Can also use -=, *=, /=
end

#UNTIL STATEMENT
puts "\nuntil:".upcase!
counter = 1
until counter > 10
  puts counter
  
  counter += 1
end

#FOR STATEMENT
puts "\nfor without:".upcase!
for num in 1...10 #three dots doesn't include the highest number
  puts num
end

puts "\nfor with:".upcase!
for num in 1..15 #Two dots includes the highest number
  puts num
end

#ITERATOR STATEMENT
puts "\nloop:".upcase!
i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end
puts ""

puts "\nloop and next:".upcase!
i = 20
loop do
  i -= 1
  next if i % 2 != 0 #next skip to the next iteration if it's true
  print "#{i}"
  break if i <= 0
end


#EACH ITERATOR
puts "\n\neach 1:".upcase!
my_array = [1,2,3,4,5]

my_array.each do |x| #each apply an expression to each element of an object
  x += 10
  print "#{x}"
end

puts "\n\neach 2:".upcase!

odds = [1,3,5,7,9]

odds.each {|x| print x *= 2} # {} replace do and end


# .TIMES ITERATOR 
puts "\n\n.times".upcase!

3.times {print "I'm the best! "} #.times is a compact for loop

puts "\n\n"

#proyecto Reemplazar palabras

puts "Text to search through:"
text = gets.chomp
puts "Word to search and change:"
redact = gets.chomp

words = text.split(" ") #split divide a string wherever it sees a delimiter, in this case, a space

words.each do |word|
  if word == redact
    print "REDACTED "
  else
    print word + " "
  end
end