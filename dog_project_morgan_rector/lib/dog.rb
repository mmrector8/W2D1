#should accept a name (string), breed (string), age (number), bark (string), and favorite_foods (array) as arguments

class Dog
    def initialize(name,breed,age,bark,favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods= favorite_foods
    end 

    def name
        @name
    end 

    def breed
        @breed
    end

    def age
        @age
    end

    def age=(number)
        @age=number
    end

    def favorite_foods
        @favorite_foods
    end 

    def bark
        if @age > 3
             @bark.upcase
        else
             @bark.downcase
        end 
    end 

    def favorite_food?(str)
        str = str.downcase
        @favorite_foods = @favorite_foods.map! {|ele| ele.downcase}
        return true if @favorite_foods.include?(str.downcase)
        false
    end 

end

