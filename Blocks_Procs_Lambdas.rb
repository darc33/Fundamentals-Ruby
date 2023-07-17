#BLOCKS
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55] #Serie de Fibonacci 

doubled_fibs = fibs.collect { |x| 2*x} #.collect takes a block and applies the expression in the block to every element in an array 
print doubled_fibs

def yield_name(name)
  puts "\n\nIn the method! Let's yield."
  yield("Kim") #yield permit to execute the block associated to the method
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method.\n\n"
end

yield_name("Pepito") {|n| puts "My name is #{n}." }

#PROCS (It's a saved block)
  #Multiples of 3
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

print (1..100).to_a.select(&multiples_of_3) # & converts the proc into a block  

#Round floats
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new { |x| x.floor}

ints ||= floats.collect(&round_down)
print "\n\n", ints

#LAMDAS (They're similar to procs)

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |param| param.to_sym}

symbols = strings.collect(&symbolize)
print "\n\n", symbols

#PROCS VS LAMBDAS
def batman_ironman_proc
  victor = Proc.new { return "\n\nBatman will win!(proc)" } #A proc return immediately without returning to the method
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" } #A lambda return first to the block 
  victor.call
  "Iron Man will win!(lambda)"
end

puts batman_ironman_lambda

#PROYECT FINAL REVIEW

#Block
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select{|item| item.is_a? Integer}
print "\n", ints

#Proc
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new { |n| n < 100}

youngsters = ages.select(&under_100) 
print "\n\n", youngsters

#Lambda

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda { |key,value| value < "M"}

a_to_m = crew.select( &first_half)
puts "\n ", a_to_m