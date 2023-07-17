x = 10
y = 15

if x < y #check is something is true
  puts "Oh! #{x} is less than #{y}"
elsif x > y
  puts "Oh! #{y} is more than #{x}"
else 
  puts "Oh! the numbers are the same"
end

hungry = false

unless hungry #check is something is false, reverse if
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

is_true = 2 != 3 # != is not equal
is_false = 2 == 3 # == is equal

test_1 = 17 > 16 #Greater than
test_2 = 21 < 30 #Less than
test_3 = 9 >= 9 #Greater than or equal to
test_4 = -11 <= 4 #Less than or equal to

puts boolean_1 = (3 < 4 || false) && (false || true) # && is and, || is or
puts boolean_2 = !true && (!true || 100 != 5**2) # ! is not 
puts boolean_3 = true || !(true || false)

print "Integer please: "
user_num = Integer(gets.chomp)

#Verify the sign of an integer
if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end

print "Please tell me something: "
user_input = gets.chomp
user_input.downcase!

#Search and change something in a string
if user_input.include? "s" #include shows true or false if finds something
  user_input.gsub!(/s/, "th") #.gsub! is global substitution 
else
  puts "Sorry, I can't find anything"
end

puts "It is: #{user_input}"