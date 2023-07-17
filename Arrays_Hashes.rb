#UNIDIMENSIONAL ARRAY
puts "Unidimensional array:".upcase!
demo_array = [100, 200, 300, 400, 500]
print demo_array[2] #Select an item in array for index (the first index is 0)

#MULTIDIMENSIONAL ARRAY
puts "\n\nMultidimensional array:".upcase!
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]] #Array of arrays
multi_d_array.each { |x| puts "#{x}\n" }

#HASH
puts "\nLiteral Hash:".upcase!
my_hash = { "name" => "Eric", #Literal way to do a hash
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

puts "\nAdding Hash".upcase!
pets = Hash.new #Creates an empty hash
pets["Roberto"] = "bird" #Add things to a hash
puts pets["Roberto"]

#ITERATIONS

puts "\nEach over arrays and hash".upcase!

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]
sandwiches = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]


family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
puts "\n"
sandwiches.each {|sub_array| sub_array.each {|tipes| puts tipes}}
puts "\n"
family.each { |x, y| puts "#{x}: #{y}" }

#HISTOGRAM

puts "\nTell me something:"
text = gets.chomp
words = text.split

frequencies = Hash.new (0) #0 is the default value of the hash

words.each {|word| frequencies[word] += 1}

frequencies = frequencies.sort_by { |word, times| times } #.sort_by sort the words for times and return an array of arrays
frequencies.reverse!

frequencies.each {|word, times| puts word + " " + times.to_s}#.to_s converts the value from a number to a string