require 'pry'

class Anagramer
  def initialize(first_word)
    @first_word = first_word
    @second_word
  end

  def anagram(word_to_test)
    @second_word = word_to_test
    result = "These words are NOT anagrams."
    if same_chars_included?() & is_same_length?()
      result = "These words are anagrams."
    end
    result
  end

  def same_chars_included?
    bool_array = []
    @first_word.each_char do |letter|
      bool_array.push(@second_word.include?(letter))
    end
    if bool_array.include?(false)
      return false
    end
    true
  end

  def is_same_length?
    @first_word.length == @second_word.length
  end

  # def is_same_ascii_sum?
  #   first_word_sum = 0
  #   second_word_sum = 0
  #
  #   @first_word.each_char do |letter|
  #     first_word_sum += letter.ord
  #   end
  #
  #   @second_word.each_char do |letter|
  #     second_word_sum += letter.ord
  #   end
  #
  #   first_word_sum == second_word_sum
  # end

end



ruby = Anagramer.new("ruby")
puts ruby.anagram("bury")
puts ruby.anagram("fury")
