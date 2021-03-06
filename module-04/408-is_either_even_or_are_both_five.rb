# ==============================================================================
# Instructions
# ==============================================================================
# Write a method called `is_either_even_or_are_both_five`

# Given two numbers, `is_either_even_or_are_both_five` returns a boolean (true or false),
# indicating whether at least one of them is even or both of them are five.


# ==============================================================================
# Examples
# ==============================================================================
# puts is_either_even_or_are_both_five(6, 13) => true
# puts is_either_even_or_are_both_five(11, 5) => false
# puts is_either_even_or_are_both_five(5, 5) => true


# ==============================================================================
# Sandbox
# ==============================================================================
# Create your method here:
def is_either_even_or_are_both_five(num1, num2)
  (num1.even? || num2.even?) || (num1 == 5 && num2 == 5) ? true : false
end

# Test your method here:
puts is_either_even_or_are_both_five(6, 13)
puts is_either_even_or_are_both_five(11, 5)
puts is_either_even_or_are_both_five(5, 5)
puts is_either_even_or_are_both_five(7, 9)
puts is_either_even_or_are_both_five(10, 16)