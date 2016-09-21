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


