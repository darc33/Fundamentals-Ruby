puts "string".object_id #.object_id gets the ID of an object
puts "string".object_id

puts :symbol.object_id #when starts with : it is a symbol
puts :symbol.object_id

my_first_symbol = :symbol #It's possible to assign a symbol to a variable

symbol_hash = {
  :one => 1,   #It's better to assign a symbol as key of the hash cause it's 
  :two => 2,   # immutable and it has memory
  :three => 3,
}

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
strings.each { |s| symbols.push(s.to_sym)} #.to_sym and .intern converts a string in a symbol, .push add an element to an array

print "\n", symbols, "\n\n"

movie_ratings = {
  :memento => 3,
  :primer => 3.5,
  :the_matrix => 5,
  :truman_show => 4,
  :red_dawn => 1.5,
  :skyfall => 4,
  :alex_cross => 2,
  :uhf => 1,
  :lion_king => 3.5
}

good_movies = movie_ratings.select { |movie, rating| rating > 3} #.select filter a hash for values that meet certain criteria

puts good_movies, " "

movie_ratings.each_key { |movie| puts movie}

#PROYECT MOVIES 

movies = {
  :batman => 4,
  :adam => 2,
  :cars => 3
  }

puts "What do you wanna do?"
puts "Type 'add' if you want to add a movie"
puts "Type 'update' if you want to update the rating of a movie"
puts "Type 'display' if you want to display the database"
puts "Type 'delete' if you want to delete a movie"
choice = gets.chomp.downcase

case choice
  when "add"
  
  	puts "Name of the title you want to add:"
  	title = gets.chomp.to_sym
  
  	if movies[title] == nil
      puts "What is the rating of #{title}"
      rating = gets.chomp.to_i
      movies[title] = rating
      puts "#{title} was succesful added with a rating of #{rating}"
    else
      puts "Sorry #{title} already exist, it's rating is #{movies[title]}"
    end
  
  when "update"
  
  	puts "Name of the title you want to update"
  	title = gets.chomp.to_sym
  
  	if movies[title] == nil
      puts "Sorry #{title} isn't in the database"
    else
      puts "What is the new rating of #{title}"
      rating = gets.chomp.to_i
      movies[title] = rating
      puts "Done! The new rating of #{title} is #{rating}"
    end
  
  when "display"
  
  	movies.each { |movie, rating| puts "#{movie}: #{rating}"}
  
  when "delete"
  
  	puts "Name of the title you want to delete"
  	title = gets.chomp.to_sym
  
  	if movies[title] == nil
      puts "Sorry #{title} isn't in the database"
    else
      movies.delete(title)
      puts "Done! #{title} was deleted"
    end
  
  else
  	puts "Error! invalid option"
end