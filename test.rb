require "http"

system "clear"

puts "Please enter the ID for the movie you would like to see"

response = HTTP.get("http://localhost:3000/movies")

pp response.parse(:json)