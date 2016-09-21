# 1.5 One Away: There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.

def one_away?(str1, str2)
  if str1.length >= str2.length
    (str1.split("") - str2.split("")).length <= 1
  else
    (str2.split("") - str1.split("")).length <= 1 
  end
end

p one_away?("pale", "bake")
