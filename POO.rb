class Person #Creating a class
  
    @@people_count = 0 #The '@@' means that is a class variable, belongs to all objects of the class
    def initialize(name) #Has to have this method
      @name = name #The '@' means that is a instance variable, this means variables that are only available to particular instances(object) of a class   
      @@people_count += 1
    end
    
    def self.number_of_instances
      # Return your class variable
      return @@people_count
    end
  end
  
  matz = Person.new("Yukihiro") #Creates an object of the previous class
  dhh = Person.new("David")
  
  puts "Number of Person instances: #{Person.number_of_instances}"
  
  class MyClass
    $my_variable = "Hello!" #the '$' means that is a global variable
  end
  
  puts "\n",$my_variable, "\n"
  
  #INHERITANCE
  class ApplicationError
    def display_error
      puts "Error! Error!"
    end
  end
  
  class SuperBadError < ApplicationError
  end #This class inherit from the parent class, '<' means inherit 
  
  err = SuperBadError.new
  err.display_error
  
  #OVERRIDE
  class Creature
    def initialize(name)
      @name = name
    end
    
    def fight
      return puts "Punch to the chops!\n\n"
    end
  end
  
  # Add your code below!
  class Dragon < Creature
    def fight  #Here the subclass override(replace) the method of a super class
      puts "\nInstead of breathing fire..."
      super() #Calls again the super class
    
      #return "Breathes fire!"
    end
  end
  
  Bdrag = Dragon.new("Blue")
  Bdrag.fight
  
  #VIRTUAL MACHINE
  class Computer
    @@users = {}
    def initialize(username, password)
      @username = username
      @password = password
      @files = {}
      @@users[username] = password
    end
    
    def create(filename)
      time = Time.now
      @files[filename] = time
      puts "#{filename} was created by #{@username} at #{time}"
    end
    
    def Computer.get_users
      return @@users
    end
  end
  
  my_computer = Computer.new("DARC", "1234")
  my_computer.create("Juegos.txt")
  
  puts "Users: #{Computer.get_users}"
  
  
  
  
  
  