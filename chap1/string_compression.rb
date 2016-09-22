# 1.6 String Compression: Implement a method to perform basic string compression using the counts of repeated characters. For example, the string "aabcccccaaa" would become "a2b1c5a3". If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a-z).

def string_compression(str)
  i = 0
  counter = 1
  compressed = ""
  while i < str.length
    if str[i] == str[i + 1]
      counter += 1
    else
      compressed << str[i] << counter.to_s
      counter = 1
    end
    i += 1
  end
  compressed.length < i ? compressed : str
end

p string_compression("aabcccccaaa")
p string_compression("abcds")
p string_compression("aaabbbcccsddddd")