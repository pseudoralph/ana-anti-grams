require 'ana_anti_grams'
require 'rspec'

describe ('ana_anti_grams') do
  it ('should reject same word comparison') do
    expect(ruby = Anagramer.new("ruby"))
    expect(ruby.anagram("ruby")).to eq("ruby can't be an anagram of itself.")
    expect(ruby.anagram("ruBy")).to eq("ruBy can't be an anagram of itself.")
  end

  it ('check if two words ara anagrams') do
    expect(ruby = Anagramer.new("ruby"))
    expect(ruby.anagram("bury")).to eq("These words are anagrams.")
    expect(ruby.anagram("fury")).to eq("These words are NOT anagrams.")
  end

  it ('determine anagram status on a case insensitive basis') do
    expect(tea = Anagramer.new("tEa"))
    expect(tea.anagram("EAt")).to eq("These words are anagrams.")
  end

  it ('raise error if Anagrammer object is initialized with non-word (no vowels)') do
    expect{ttt = Anagramer.new("ttt")}.to raise_error(ArgumentError)
  end

  it ("report error to user if argument passed into #anagram() is non word") do
    expect(ruby = Anagramer.new("ruby"))
    expect(ruby.anagram('brrr')).to eq("ERROR-not_a_word: brrr contains no vowels. Try again.")
  end

  it ('determines whether words are antigrams (no shared letters)') do
    expect(ruby = Anagramer.new("ruby"))
    expect(ruby.anagram('alpha')).to eq("These words have no letter matches and are antigrams.")
  end


end
