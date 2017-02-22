# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
maps = ["Overpass", "Inferno", "Cache", "Nuke", "Dust 2", "Office"]
eco = [true, false]
20.times do
  Strat.create(
    name: Faker::Lorem.sentence,
    map_name: maps.sample,
    description: Faker::Lorem.sentence,
    approved: true,
    failed: 0,
    succeeded: 0,
    flashbangs: rand(4),
    molotovs: rand(4),
    smokes: rand(4),
    grenades: rand(4),
    team: 'T',
    on_eco: eco.sample
  )
end

20.times do
  Strat.create(
    name: Faker::Lorem.sentence,
    map_name: maps.sample,
    description: Faker::Lorem.sentence,
    approved: true,
    failed: 0,
    succeeded: 0,
    flashbangs: rand(4),
    molotovs: rand(4),
    smokes: rand(4),
    grenades: rand(4),
    team: 'CT',
    on_eco: eco.sample
  )
end
