# ==============================================================================
# Instructions
# ==============================================================================
# Write a method called `remove_element_from_back`

# Given an array, `remove_element_from_back` returns the given array with the
# last element removed


# ==============================================================================
# Notes
# ==============================================================================
# The change applied to the array will persist permanently on the given array


# ==============================================================================
# Examples
# ==============================================================================
# array1 = ["a", "b", "c", "d", "e", "f"]
# array2 = [1, 2, 3, 4, 5, 6, 7, 8]
#
# remove_element_from_back(array1)
# p array1 => ["a", "b", "c", "d", "e"]
#
# remove_element_from_back(array2) 
# p array 2 => [1, 2, 3, 4, 5, 6, 7]


# ==============================================================================
# Sandbox
# ==============================================================================
# Create your method here:
def remove_element_from_back(arr)
  arr.pop
end

# Test your method here:
array1 = ["a", "b", "c", "d", "e", "f"]
array2 = [1, 2, 3, 4, 5, 6, 7, 8]

remove_element_from_back(array1)
p array1

remove_element_from_back(array2)
p array2

# ==============================================================================
# Notes
# ==============================================================================
# Alternative methods to do this would be:
#  Use the slice!() method to slice off the last element (and remove it permanently)
#   arr.slice!(-1)
