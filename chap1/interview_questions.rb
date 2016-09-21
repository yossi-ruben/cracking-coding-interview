## 1.1 Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data struectures?

def is_unique?(str)
  (0...str.length).each do |i|
    ((i + 1)..str.length).each do |j|
      return false if str[i] == str[j]
    end
  end
  true
end
is_unique?("sdfaa")

## Run Time:


#====================================================================================

# 1.2 Given two strings, write a method to decide if one is a permutation of the other

def is_permutation?(str1, str2)
  str1.split("").sort == str2.split("").sort
end

is_permutation?("asdf", "fdsaa") 

# Run Time:

#====================================================================================

#1.3 URLify: Write a method to replace all spcaes in a string with '%20'. You may assume that the string has sufficient space at the end to hold the additional characters, and that you are given the "true" length of the string.  

def urlify(str, count)
  new_str = ""
  i = 0
  while i < count 
    str[i] == " " ? new_str << "%20" : new_str << str[i]
    i += 1 
  end
  new_str
end

urlify("Mr John Smith    ", 13)

#Run Time:

def urlify_with_regex(str, count)
  str.gsub(/\b\s\b/, "%20").strip
end

urlify_with_regex("Mr John Smith    ", 13)

#Run Time:

#====================================================================================
 
 # 1.4 Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.

def pal_permu?(str)
  let_count = Hash.new(0)
  even = 0
  odd = 0
  str.downcase.delete(" ").split("").each{ |i| let_count[i] += 1}
  let_count

  let_count.values.each do |v|
    v.even? ? even += 1 : odd += 1
  end

  odd > 1 ? false : true
end 

pal_permu?("Tact Co")

#Run Time: 


#====================================================================================
 
 # 1.5 One Away: There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.

def one_away?(str1, str2)
  if str1.length >= str2.length
    (str1.split("") - str2.split("")).length <= 1
  else
    (str2.split("") - str1.split("")).length <= 1 
  end
end

 p one_away?("pale", "bake")


#====================================================================================

# 1.6 String Compression: Implement a method to perform basic string compression using the counts of repeated characters. For example, the string "aabcccccaaa" would become "a2b1c5a3". If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a-z).

def string_compression(str)

end

p string_compression













#