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

