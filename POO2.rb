class Person
    attr_reader :name #Allow to read the variable 
    attr_writer :name #Allow to write the variable 
    attr_accessor :job #Allow both or read a write the variable	
    
    def initialize(name, job)
      @name = name
      @job = job
    end
    
    public #The method after this is public
    def bark
      puts "Woof!"
    end
    
    private #The method after this is private
    def id
      @id_number = 12345
    end
    
end
  
#MODULE (is a set of methods and constants, can't create instances and can't have subclasses 

module Circle
    PI = 3.1415926535897

    def Circle.area(radius)
        PI * radius**2
    end

    def Circle.circumference(radius)
        2 * PI * radius
    end
end

puts Math::PI #The '::' allows to use the constants or methods of a module 
puts Circle::PI, "\n"

require 'date' #Explicitly brought a module
puts Date.today, "\n"

include Math #Includes the module in a class to avoid writes Math::PI
puts PI, "\n"

#MULTIPLE INHERITANCE (adding modules to a different classes it's possible to imitate multiple inheritance)
module MartialArts 
    def swordsman 
        puts "I'm a swordsman"
    end
end

class Ninja
    include MartialArts
    def initialize(clan)
        @clan = clan
    end
end

class Samurai
    include MartialArts
    def initialize(shogun)
        @shogun = shogun
    end
end

#BANK

class Account 
    attr_reader :name, :balance

    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end

    public
    def display_balance(pin_number)
        if pin_number == pin
            puts "Balance: $#{balance}"
        else
            puts pin_error
        end
    end

    public 
    def withdraw(pin_number, amount)
        if pin_number == pin
            @balance -= amount
            puts "Withdrew #{amount}. New balance $#{@balance}."
        else
            puts pin_error
        end
    end

    private
    def pin
        @pin = 1234
    end

    private
    def pin_error
        return "Access denied: incorrect PIN"
    end
end

checking_account = Account.new("Pepito", 100_000_000)
checking_account.withdraw(2345,100_0000)
checking_account.display_balance(1234)
checking_account.withdraw(1234,100_0000)
checking_account.display_balance(1234)
