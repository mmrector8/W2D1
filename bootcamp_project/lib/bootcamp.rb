#should accept a name (string), slogan (string), and student_capacity (number) as args

class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity

        @teachers = []
        @students = []
        @grades = Hash.new {|hash, k| hash[k] = []}
    end 

    def name
        @name
    end 

    def slogan
        @slogan
    end 

    def teachers
        @teachers
    end
    
    def students
        @students
    end

    def hire(teacher)
        teachers << teacher
    end 

    def enroll(student)
        if students.length < @student_capacity
            @students << student
            return true
        else
            return false
        end 
    end 

    def enrolled?(student)
        if @students.include?(student)
            return true
        else
            false
        end
    end 
end
