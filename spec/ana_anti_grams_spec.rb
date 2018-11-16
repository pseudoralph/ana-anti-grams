require 'ana_anti_grams'
require 'rspec'

describe ('ana_anti_grams') do
  it ('should reject same word comparison') do
    expect(ruby = Anagramer.new("ruby"))
    expect(ruby.anagram("ruby")).to(eq("ruby can't be an anagram of itself."))
  end

  it ('check if two words ara anagrams') do
    expect(ruby = Anagramer.new("ruby"))
    expect(ruby.anagram("bury")).to(eq("These words are anagrams."))
    expect(ruby.anagram("fury")).to(eq("These words are NOT anagrams."))
  end

  it ('determine anagram status on a case insensitive basis') do
    expect(tea = Anagramer.new("tea"))
    expect(tea.anagram("EAt")).to(eq("These words are anagrams."))
    expect(tea.anagram("fury")).to(eq("These words are NOT anagrams."))
  end

end
