print "What's your first name?"
first_name = gets.chomp #gets get the input from the user (this adds a black line), chomp removes that extra line
first_name.capitalize! #Capitalize  capitalizes only the first letter of a string, and ! modifies the value contained within the variable itself
print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!
print "What's your city?"
city = gets.chomp
city.capitalize!
print "What's your state?"
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you born in #{city}, #{state}" #{variable} is the interpolation
