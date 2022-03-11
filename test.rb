require "http"

system "clear"

response = HTTP.get("http://localhost:3000")

pp response.parse(:json)