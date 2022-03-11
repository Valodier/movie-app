require "http"

system "clear"

puts "Please enter the ID for the movie you would like to see"
id = gets.chomp

response = HTTP.get("http://localhost:3000/one_movie/#{id}")

p response.parse(:json)