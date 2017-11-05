# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

shows = Show.create([
      {title: 'Shingeki no Kyojin', episodes: 25},
      {title: 'Fullmetal Alchemist', episodes: 51},
      {title: 'Steins Gate', episodes: 24},
      {title: 'Barakamon', cover: '59321.jpg', episodes: 12},
      {title: 'Hanasaku Iroha', cover: '28967.jpg', episodes: 26},
      {title: 'Udon no Kuni no Kiniro Kemari', cover: '82343.jpg', episodes: 12},
      {title: 'flying Witch', cover: '80039.jpg', episodes: 12},
      {title: 'Natsume Yuujinchou', cover: '28859.jpg', episodes: 13}
  ]

)