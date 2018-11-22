require ("sinatra")
require ("sinatra/reloader")
also_reload ("lib/**/*.rb")
require ("./lib/ana_anti_grams.rb")
require ("pry")

# access = {
#   "ralph" => "he can access",
#   "jon" => "he can access"
# }
#
# get ("/admin/:name") do
#   result = "accesss denied"
#
#   if access.include?(params[:name])
#     result = access.fetch(params[:name])
#   end
#   result
# end


get ("/") do
  @description = "Welcome home."
  erb ( :index)
end

get ("/is_it") do
  first_word = params.fetch("first_word")
  second_word = params.fetch("second_word")
  test = Anagramer.new(first_word)
  @results = test.anagram(second_word)
  erb ( :output)
end
