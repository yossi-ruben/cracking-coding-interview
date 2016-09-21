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



def urlify_with_regex(str, count)
  str.gsub(/\b\s\b/, "%20").strip
end

urlify_with_regex("Mr John Smith    ", 13)

