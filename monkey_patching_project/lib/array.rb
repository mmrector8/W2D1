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
end
