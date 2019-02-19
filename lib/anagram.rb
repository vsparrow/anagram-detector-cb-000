# Your code goes here!
require 'pry'

class Anagram

  def initialize word
    @word = word
    @word_sorted = word.split("").sort
  end

  def match words
    matches = []
    length = @word_sorted.length
    words.each do |word|
      if word.length == length
        result = (word.split("").sort <=> @word_sorted)
        matches.push(word) if result == 0
        # binding.pry
      end
    end
    matches
  end

end
