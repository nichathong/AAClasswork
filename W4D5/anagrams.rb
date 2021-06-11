# anagram?("gizmo", "sally")    #=> false
# anagram?("elvis", "lives")    #=> true

# Write a method #first_anagram? that will generate and store all the possible anagrams of the first string. Check if the second string is one of these.

# Hints:

# For testing your method, start with small input strings, otherwise you might wait a while
# If you're having trouble generating the possible anagrams, look into this method.
# What is the time complexity of this solution? What happens if you increase the size of the strings?

def first_anagram?(str_1, str_2)

    new_arr = str_1.chars.permutation.to_a
    all_possible = []
    new_arr.each do |ele|
        all_possible << ele.join("")
    end
    all_possible.any? { |ele| str_2.include?(ele) }

end

p first_anagram?('ant', 'tan')

# Write a method #second_anagram? that iterates over the first string. For each letter in the first string, find the index of that letter in the second string (hint: use Array#find_index) and delete at that index. The two strings are anagrams if an index is found for every letter and the second string is empty at the end of the iteration.

# Try varying the length of the input strings. What are the differences between #first_anagram? and #second_anagram??

def second_anagram?(str_1, str_2)
    words = str_2.chars
    str.each_char.with_index do |char, i|
end

# def first_anagram?(str_1, str_2)
#     hash_1 = Hash.new(0)
#     hash_2 = Hash.new(0)

#     str_1.each_char { |char| hash_1[char] += 1}
#     str_2.each_char { |char| hash_2[char] += 1}

#     hash_1 == hash_2
# end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true