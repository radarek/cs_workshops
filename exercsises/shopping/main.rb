require "./shop"
require "./product"
require "./client"

puts "Program name: #{$0}"

shop = Shop.new("Stonka")
shop.add_product(Product.new("ser", 3.56), 5)
shop.add_product(Product.new("chleb", 4.23), 2)
shop.add_product(Product.new("jogurt", 2.2), 2)
shop.add_product(Product.new("szynka", 5), 4)

client = Client.new("Janusz", 30)
client.list = ["chleb", "jogurt", "szynka"]
client.perform_shopping(shop)

require "pp"
pp client.bag
