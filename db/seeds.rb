require 'open-uri'
require 'json'

puts "Clear db 🗑"

Salon.destroy_all
Category.destroy_all

puts "Creating 1 salon 💅"
Salon.create!(
  name: 'Prima Salon 🐶'
)

url = "https://dog.ceo/api/breeds/list/all"

raw_json = open(url).read
parsed_json = JSON.parse(raw_json)

categories_list = parsed_json["message"].keys.first(5)

puts "Create multiple categories"
categories_list.each do |name|
  puts "Creating #{name}"
  Category.create!(name: name)
end

puts "Done"
