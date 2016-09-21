# 1.2 Check Permutation: Given two strings, write a method to decide if one is a permutation of the other

def is_permutation?(str1, str2)
  str1.split("").sort == str2.split("").sort
end

is_permutation?("asdf", "fdsaa") 