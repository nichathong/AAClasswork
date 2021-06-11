
require 'byebug'
# Phase I
# First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger.
# What is the time complexity for this function?

# def smallest_num(array)
#     smallest = 0

#     (0...array.length-1).each do |i|
#         (i+1...array.length-1).each do |j|
#             if array[i] < array[j]
#                 smallest = array[i]
#             end
#         end
#     end
#     smallest 
   
# end

# p smallest_num([ 0, 3, 5, 4, -5, 10, 1, 90 ])  #This is a O(n^2) because functions need to be iterate twice

# # Phase II
# # Now rewrite the function to iterate through the list just once while keeping track of the minimum. What is the time complexity?

# def smallest_num(array)
#     # array.min

#     def smallest_num(array)
#     smallest = 0

#     i = 0
#     while i < array.length
#         if array[i] < smallest
#             smallest = array[i]
#         end
#         i += 1
#     end
#     smallest    

# end

# p smallest_num([ 0, 3, 5, 4, -5, 10, 1, 90 ])  # time complexity is O(n) because you got to interate through the array to check for all elements. The input size is depends on the size of array


# You have an array of integers and you want to find the largest contiguous (together in sequence) sub-sum. Find the sums of all contiguous sub-arrays and return the max.

# list = [5, 3, -7]
#     largest_contiguous_subsum(list) # => 8

#     # possible sub-sums
#     [5]           # => 5 [0][0]
#     [5, 3]        # => 8 --> we want this one [0..1]
#     [5, 3, -7]    # => 1 [0..3]
#     [3]           # => 3 [1..1]
#     [3, -7]       # => -4 [1..2]
#     [-7]          # => -7 [2..2]
# Phase I
# Write a function that iterates through the array and finds all sub-arrays using nested loops. First make an array to hold all sub-arrays. Then find the sums of each sub-array and return the max.

# Discuss the time complexity of this solution.

# def largest_contiguous_subsum(array)
#     largest_sum = 0

#     (0...array.length).each do |i|
#         (0...array.length).each do |j|
#             sum = array[i...(i+j)].sum
#             if largest_sum < sum
#                 largest_sum = sum
#             end    
#         end
#     end
#     largest_sum

# end

# p largest_contiguous_subsum([1, 2, -4, 4, -3, 4]) # # this O(n^2) or polynomial because the function iterate through twice which rely on the size of the input and takes all the possibility of the result. The sumation is just a constant so we drop it.

# Phase II
# Let's make a better version. Write a new function using O(n) time with O(1) memory. Keep a running tally of the largest sum. To accomplish this efficient space complexity, consider using two variables. One variable should track the largest sum so far and another to track the current sum. We'll leave the rest to you.

def largest_contiguous_subsum(array)
    current_sum = array.first
    largest_sum = array.first
    array.each do |num|
        current_sum += num
        if largest_sum < current_sum
            largest_sum = current_sum
        end
    end
    largest_sum
end

# p largest_contiguous_subsum([5, 3, -7]) #using o(n) because only iterate once and the other operations are just addion or concat....
p largest_contiguous_subsum([1, 2, -4, 4, -3, 4])
p largest_contiguous_subsum([1, 5, -8, 4, -6, 1, 9])
