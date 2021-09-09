require 'open-uri'
require 'json'

puts "Clear db 🗑"

Meal.destroy_all

puts "All meals destroyed"

puts "Create new meal instance 🍔"

client = Pexels::Client.new('563492ad6f91700001000001cf6df97e9ebf44408945ba9598a8eb08')

9.times do
  meal_name = Faker::Food.dish
  puts "Creating #{meal_name}"
  client.videos.search(meal_name, per_page: 1).each do |video|
    Meal.create!(
      name: meal_name,
      price: rand(1..100),
      video_url: video.files.first.link,
      image_url: video.image
    )
  end
end

puts "Seeds done ⭐️"
