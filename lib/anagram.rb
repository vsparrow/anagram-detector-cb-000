class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(word_array)
    matched_array = []
    word_array.each do |word|
      if word.length == @word.length
        if word.split("").sort == @word.split("").sort
          matched_array << word
        end #word.split
      end #if word.length
    end #word_array.each
    matched_array
  end #matches

end #class
