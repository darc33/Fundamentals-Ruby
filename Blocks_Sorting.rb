def greeting #CREATES A METHOD
    puts "greeting\n\n"
end
  
greeting 
  
def what_up(greeting, *friends)#arguments preceded by * means that method can receive one or more arguments
friends.each { |friend| puts "#{greeting}, #{friend}!" }
end
  
what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

def add(n,m)#method that not print just return the result
return n+m
end

result = add(3,7)
puts "\n" + result.to_s + "\n\n"

def greeter(name)
return "greeting #{name}"
end

puts greeter("Carlitos\n\n")

def by_three?(number)
if number % 3 == 0
    return true
else
    return false
end
end

puts by_three?(7)

my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

my_array.sort! #Organiza un arreglo
puts "\n" + my_array.to_s + "\n\n"

#COMBINED COMPARISON OPERATOR
book_1 = "A Wrinkle in Time"
book_2 = "A Brief History of Time"

puts (book_1 <=> book_2).to_s + "\n\n" #0 if equal, 1 if the first is greater than second, -1 if the first operand is less than second

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
puts "Ascending: #{books.sort! { |firstBook, secondBook| firstBook <=> secondBook} }" #Sort in ascending order

# Sort your books in descending order, in-place below

puts "\nDescending: #{books.sort! { |firstBook, secondBook| secondBook <=> firstBook} }" #Sort in descending order

def alphabetize(arr,rev=false) 
arr.sort!
if rev
    return arr.reverse!
else
    return arr
end
end

numbers= [5,3,9,15,7]

puts "\nAscending: #{alphabetize(numbers)}"
puts "\nDescending: #{alphabetize(numbers, true)}"
  