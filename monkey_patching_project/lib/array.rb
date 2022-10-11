# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.length == 0
    self.max - self.min
  end 

  def average
    return nil if self.length == 0
    sum = 0.0
    self.each do |ele|
        sum +=ele
    end 
    sum/self.length
  end 

  def median
    return nil if self.length ==0
    sorted = self.sort
    if sorted.length.odd?
        middle = (sorted.length/2)
        return sorted[middle]
    else 
        half = sorted.length/2
        sum_of_middle = sorted[half-1] + sorted[half]
        average = sum_of_middle/2.0
        return average
    end 
  end

  def counts
        count_hash = {}
        self.each do |ele|
            if !count_hash[ele]
                count_hash[ele] =1
            else
                count_hash[ele] +=1
            end 
        end 
        count_hash
    end


    def my_count(val)
        count = 0

        self.each do |ele|
            if ele == val
                count +=1
            end
        end 
        count
    end 

    def my_index(val)

        self.each_with_index do |ele, i|
            if val == ele
               return i
            end
        end 
        nil
    end 

    def my_uniq
        #define a return array
        uniq = []
        # loop through array
            self.each do |ele|
        # if return array does not include the element, push it
                if !uniq.include?(ele)
                    uniq << ele
                end 
            end
        uniq
    end 

    # # arr_1 = [
    #       ["a", "b", "c"],
    #       ["d", "e", "f"],
    #       ["g", "h", "i"]
    #     ]
    #     expected_1 = [
    #       ["a", "d", "g"],
    #       ["b", "e", "h"],
    #       ["c", "f", "i"]
    #     ]

    def my_transpose
        transposed = Array.new(self.length) {|ele| ele = []}

        self.each_with_index do |subarr, i|
            subarr.each_with_index do |ele, j|
                transposed[i][j] = self[j][i]
            end
        end 
        transposed
    end 



    #final end statement
end
