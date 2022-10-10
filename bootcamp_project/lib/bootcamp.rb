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

    def student_to_teacher_ratio
        return @students.length/@teachers.length
    end 

    def add_grade(student, grade)
        
        if enrolled?(student)
            @grades[student] << grade
            return true
        else
            return false
        end 
        #loop through hash, if student is a key, shovel in grade
        
    end 

    def num_grades(student)
        return @grades[student].length
    end 

    def average_grade(student)
        if !enrolled?(student) || num_grades(student) == 0
            return nil
        end

        @grades[student].sum/num_grades(student)
    end 
end


