# ==============================================================================
# Instructions
# ==============================================================================
# Write a method called `get_all_words`

# Given a string of words, `get_all_words` returns an array containing every
# word in the given string

# If the given string is an empty string, return an empty array


# ==============================================================================
# Examples
# ==============================================================================
# string = "The best part of waking up is Folgers in your cup"
# p get_all_words(string)  => ["The", "best", "part", "of", "waking", "up", "is", "Folgers", "in", "your", "cup"]
#
# other_string = "Gotta catch em all"
# p get_all_words(other_string) => ["Gotta", "catch", "em", "all"]


# ==============================================================================
# Sandbox
# ==============================================================================
# Create your method here:
def get_all_words(str)
  str.split(' ')
end

# Test your method here:
string = "The best part of waking up is Folgers in your cup"
other_string = "Gotta catch em all"

p get_all_words(string)
p get_all_words(other_string)