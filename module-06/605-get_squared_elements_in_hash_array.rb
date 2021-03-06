# ==============================================================================
# Instructions
# ==============================================================================
# Write a method called `get_squared_elements_in_hash_array`

# Given a hash and a key(symbol), `get_squared_elements_in_hash_array` returns
# an array containing all the squared elements of the array located at the given
# key


# ==============================================================================
# Notes
# ==============================================================================
# Assume that all elements in the array will be numbers
#
# Return nil:
#   a) if the array is empty
#   b) if the value at the given key is not an array
#   c) if the key does not exist in the hash


# ==============================================================================
# Examples
# ==============================================================================
# apparel = {
#   name: "DemPants",
#   sizes: [28, 29, 30, 31, 32, 33, 34, 35, 36],
#   materials: ["cotton", "polyester", "spandex"],
#   price: 45
# }
#
# student = {
#   name: "Poop McGoop",
#   grade: 7,
#   scores: [82, 65, 86, 95, 72, 89],
#   extra_curriculuars: ["student council", "orchestra", "basketball"],
#   failed_courses: []
# }
#
# p get_squared_elements_in_hash_array(apparel, :sizes)
# => [784, 841, 900, 961, 1024, 1089, 1156, 1225, 1296]
#
# p get_squared_elements_in_hash_array(student, :scores)
# => [6724, 4225, 7396, 9025, 5184, 7921]
#
# p get_squared_elements_in_hash_array(student, :grade)
# => []
#
# p get_squared_elements_in_hash_array(student, :friends)
# => []
#
# p get_squared_elements_in_hash_array(student, :failed_courses)
# => []


# ==============================================================================
# Sandbox
# ==============================================================================
# Create your method here:
def  get_squared_elements_in_hash_array(hash, key)
  obj = hash[key]
  if obj.is_a? (Array) and obj.length > 0
    obj.map do |x|
      x * x
    end
  else
      nil
  end
end

# Test your method here:
apparel = {
  name: "DemPants",
  sizes: [28, 29, 30, 31, 32, 33, 34, 35, 36],
  materials: ["cotton", "polyester", "spandex"],
  price: 45
}

student = {
  name: "Harry Potter",
  grade: 7,
  scores: [82, 65, 86, 95, 72, 89],
  extra_curriculuars: ["student council", "orchestra", "basketball"],
  failed_courses: []
}

p get_squared_elements_in_hash_array(apparel, :sizes)
p get_squared_elements_in_hash_array(student, :scores)
p get_squared_elements_in_hash_array(student, :grade)
p get_squared_elements_in_hash_array(student, :friends)
p get_squared_elements_in_hash_array(student, :failed_courses)

# ==============================================================================
# Notes
# ==============================================================================
# The method used here is to first get the object at the given key-value pair (i.e. obj = hash[key])
# Then check if the object is an array and it isn't empty (length > 0)
# We then map over the array and sqaure the value at each index
#  - map() creates a new array containing the new values
# Else return nil
#
# Alternative methods:
# Loop through the array and push the squared value on to the end of a new array
# obj.each do |x|
#   squared_array << x * x
#   index += 1
# end