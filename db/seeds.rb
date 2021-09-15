require 'open-uri'
require 'json'

puts "Clear db 🗑"

Pet.destroy_all

miguel = User.find_by_username('libsyz')
prima = User.find_by_username('primaulia')

puts "Created pets for miguel"

Pet.create(
  name: 'pripri',
  user: miguel,
  salon: Salon.first
)

Pet.create(
  name: 'propro',
  user: miguel,
  salon: Salon.first
)

puts "Created pets for prima"

Pet.create(
  name: 'miguelito',
  user: prima,
  salon: Salon.first
)

Pet.create(
  name: 'miguelita',
  user: prima,
  salon: Salon.first
)
