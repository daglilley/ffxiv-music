# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Expansion.destroy_all
Region.destroy_all
DutyType.destroy_all
OrchestrionType.destroy_all
Track.destroy_all

Expansion.create!(name: "A Realm Reborn", patch: 2)
Expansion.create!(name: "Heavensward", patch: 3)
Region.create!(name: "Thanalan")
Region.create!(name: "La Noscea")

expansions = Expansion.all
regions = Region.all

arr = expansions.first
thanalan = regions.first

thanalan.zones.create!(name: "Ul'Dah")
thanalan.zones.create!(name: "Gold Saucer")

uldah = thanalan.zones.first

uldah.zones.create!(name: "Barracks")
uldah.zones.create!(name: "The Hourglass")

barracks = uldah.zones.first


