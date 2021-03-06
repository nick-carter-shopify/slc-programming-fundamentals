# ==============================================================================
# Instructions
# ==============================================================================
# Write a method called `get_element_of_array_in_hash_array`

# Given a hash, key(symbol), and an index(number), `get_element_of_array_in_hash_array`
# returns the value of the element at the given index of the array located within
# the given hash at the given key


# ==============================================================================
# Notes
# ==============================================================================
# Return nil:
#   a) if the array is empty
#   b) if the value at the given key is not an array
#   c) if the key does not exist in the hash
#   d) if the index is out of range


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
# p get_element_of_array_in_hash_array(apparel, :materials, 2)
# => "spandex"
#
# p get_element_of_array_in_hash_array(student, :scores, 4)
# => 72
#
# p get_element_of_array_in_hash_array(student, :grade, 3)
# => nil
#
# p get_element_of_array_in_hash_array(student, :friends, 1)
# => nil
#
# p get_element_of_array_in_hash_array(student, :failed_courses, 0)
# => nil
#
# p get_element_of_array_in_hash_array(student, :extra_curriculuars, 6)
# => nil


# ==============================================================================
# Sandbox
# ==============================================================================
# Create your method here:
def get_element_of_array_in_hash_array(hash, key, index)
  obj = hash[key]
  if obj.is_a? (Array)
    obj[index]
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
  name: "Max Power",
  grade: 7,
  scores: [82, 65, 86, 95, 72, 89],
  extra_curriculuars: ["student council", "orchestra", "basketball"],
  failed_courses: []
}

p get_element_of_array_in_hash_array(apparel, :materials, 2)
p get_element_of_array_in_hash_array(student, :scores, 4)
p get_element_of_array_in_hash_array(student, :grade, 3)
p get_element_of_array_in_hash_array(student, :friends, 1)
p get_element_of_array_in_hash_array(student, :failed_courses, 0)
p get_element_of_array_in_hash_array(student, :extra_curriculuars, 6)

# ==============================================================================
# Notes
# ==============================================================================
# The method used here is to first create a variable of the element in the hash of the key (i.e. hash[key])
# Then check if this element is an array
# If it is we return the element of the array at the specified index
#  - If the index doesn't exist (i.e. there is no index 6) then it will return nil
#  - If the array is emtpy (i.e. []) then it will also return nil
#  - If the element is not an array then it goes into the else block which returns nil