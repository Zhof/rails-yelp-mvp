# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

restaurant_attributes = [
  {
    name: 'La Banquise',
    address: '123 Poutine Ave., Montreal',
    phone_number: '514-123-4567',
    category: 'french'
  },
  {
    name: 'Soupe Soupe',
    address: '5331 Casgrain Ave',
    phone_number: '514-890-1234',
    category: 'belgian'
  },
  {
    name: 'Thali',
    address: '5678 rue St Mathieu',
    phone_number: '514-394-4357',
    category: 'chinese'
  },
  {
    name: 'Ichifuku',
    address: '4357 Chinatown Rd',
    phone_number: '514-495-3194',
    category: 'japanese'
  },
  {
    name: 'PizzaPizza',
    address: '666 Everywhere Lane',
    phone_number: '514-666-1234',
    category: 'italian'
  }
]
Restaurant.create!(restaurant_attributes)

