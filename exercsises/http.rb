require "httparty"
require "json"

body = HTTParty.get('https://api.icndb.com/jokes/random').body
$body_hash = JSON.parse(body)

def show_joke
  puts $body_hash["value"]["joke"]
end

show_joke
categories = $body_hash["value"]["categories"].join(", ")
puts "Categories: #{categories}"
