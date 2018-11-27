require ("sinatra")
require ("sinatra/reloader")
also_reload ("lib/**/*.rb")
require ("./lib/ana_anti_grams.rb")
require ("pry")

get ("/") do
  erb ( :index)
end

post ("/is_it") do
  first_word = params.fetch("first_word")
  second_word = params.fetch("second_word")
  
  test = Anagramer.new(first_word)
  @results = test.anagram(second_word)
  
  erb ( :output)
end
