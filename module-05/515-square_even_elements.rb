# ==============================================================================
# Instructions
# ==============================================================================
# Write a method called `square_even_elements`

# Given an array of numbers, `square_even_elements` returns a new array containing
# only the squared values of the even elements in the given array


# ==============================================================================
# Notes
# ==============================================================================
# Do not modify the given array, it should remain unchanged
#
# Assume all elements in the array are numbers
#
# Return an empty array:
#   a) if the array is empty
#   b) if all elements are odd


# ==============================================================================
# Examples
# ==============================================================================
# scores = [100, 84, 91, 85, 91, 78]
# ages = [15, 12, 12, 14, 11, 12]
# lucky_num = [7, 7, 7]
# nothing = []
#
# p square_even_elements(scores) => [10000, 7056, 6084]
# p square_even_elements(ages) => [144, 144, 196, 144]
# p square_even_elements(lucky_num) => []
# p square_even_elements(nothing) => []


# ==============================================================================
# Sandbox
# ==============================================================================
# Create your method here:
def square_even_elements(arr)
  new_arr = arr.map do |x|
    if x.even?
      x ** 2
    end
  end
  return new_arr.compact
end

# Test your method here:
scores = [100, 84, 91, 85, 91, 78]
ages = [15, 12, 12, 14, 11, 12]
lucky_num = [7, 7, 7]
nothing = []

p square_even_elements(scores)
p square_even_elements(ages)
p square_even_elements(lucky_num)
p square_even_elements(nothing)

# ==============================================================================
# Notes
# ==============================================================================
# The method used here is to create and assign new array using the map method
# We check if the element at each index of the array is even and if it is then return it's squared value
# Then we return the new array - which will have nil values in it for any values that were odd
# So we call the compact method on the new array to remove all of these nil values
# 
# Alternative methods:
  # new_arr = []
  # index = 0
  # arr.each do |x|
  #   if x.even?
  #     new_arr[index] = x ** 2
  #     index += 1
  #   end
  # end
  # new_arr