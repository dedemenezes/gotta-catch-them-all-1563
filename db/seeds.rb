# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning DB..."
Trainer.destroy_all

ash = Trainer.create(name: 'Ash', banner_url: 'https://epipoca.com.br/wp-content/uploads/2022/04/ash-pokemon-jornadas-24042022.jpg')

puts "#{ash.name} created!"

misty = Trainer.create(name: 'Misty', banner_url: 'https://epipoca.com.br/wp-content/uploads/2023/01/misty-pokemon.jpg')

puts "#{misty.name} created!"

puts 'finished! zo/'
