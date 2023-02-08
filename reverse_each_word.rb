# Write your code here
require 'pry'
def reverse_each_word(sentence)
   words = sentence.split
   reversed_words = []

   words.each do |word|
    reversed_words << word.reverse
   end
   reversed_words.join(" ")
end

puts reverse_each_word("Hello there, and how are you?")

binding.pry
0

# method 2
def reverse_each_word(sentence)
    words = sentence.split
  
    reversed_words = words.map do |word|
      word.reverse
    end
  
    reversed_words.join(" ")
  end

#   method 3
def reverse_each_word(sentence)
    words = sentence.split
  
    reversed_words = words.map(&:reverse)
  
    reversed_words.join(" ")
  end
# method 4
def reverse_each_word(sentence)
    sentence.split.map(&:reverse).join(" ")
  end