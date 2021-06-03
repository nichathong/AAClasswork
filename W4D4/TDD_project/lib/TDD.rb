# When approaching each problem, make sure to:

# Read the entire problem statement.
# Talk with your partner to identify test cases and key functionality to expect from your code.
# Write RSpec tests.
# Write the method you now have tests for. Follow the red-green-refactor approach until all specs pass.

# -------------------------------------------------------


# Remove dups
# Array has a uniq method that removes duplicates from an array. It returns the unique elements in the order in which they first appeared:

# [1, 2, 1, 3, 3].uniq # => [1, 2, 3] 
# Write your own version of this method called my_uniq; it should take in an Array and return a new array.
require "byebug"
class Array

    def my_uniq
        new_arr = []
        self.each do |el|
            new_arr << el unless new_arr.include?(el)
        end
        return new_arr
    end

    def two_sum
        new_arr = []
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                if self[i] + self[j] == 0
                    new_arr << [i, j]
                end
            end
        end
        new_arr
    end

    def my_transpose
        result = []
        # debugger
        (0...self.length).each do |row|
            temp = []
            (0...self.length).each do |col|
                temp << self[col][row]
            end
            result << temp
        end
        result
    end

    def stock_picker
        res = Hash.new { |h, k| h[k] = [] }
        (0...self.length).each do |i_1|
            (i_1+1...self.length).each do |i_2|
                res[self[i_1] - self[i_2]] += [i_1, i_2]
            end
        end
        sorted = res.sort_by { |k, v| k }
        sorted[0][-1]  
    end

end