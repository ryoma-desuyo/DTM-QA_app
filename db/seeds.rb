# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env == 'development'
  (1..100).each do |i|
      Post.create(title: "タイトル#{i}", body: "本文#{i}")
  end

  Tag.create([
      { name: 'Garage Band' },
      { name: 'Studio One' },
      { name: 'Logic Pro' },
      { name: 'Ableton Live' },
      { name: 'Cubaase' },
      { name: 'FL Studio' },
      { name: 'Pro tools' },
      { name: 'Sonar' }
  ])
end