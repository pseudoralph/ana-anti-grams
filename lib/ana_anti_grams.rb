require 'pry'

class Anagramer
  def initialize(first_word)
    @first_word = first_word
    @second_word
  end

  def anagram(word_to_test)
    @second_word = word_to_test
    result = "These words are NOT anagrams."

    if is_same_ascii_sum?() & is_same_length?()
      result = "These words are anagrams."
    end

    result
  end

  def is_same_length?
    @first_word.length == @second_word.length
  end

  def is_same_ascii_sum?
    first_word_sum = 0
    second_word_sum = 0

    @first_word.each_char do |letter|
      first_word_sum += letter.ord
    end

    @second_word.each_char do |letter|
      second_word_sum += letter.ord
    end

    first_word_sum == second_word_sum

  end

end
