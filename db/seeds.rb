# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Expansion.destroy
Region.destroy
DutyType.destroy

Expansion.create!(name: "A Realm Reborn", patch: 2)
Region.create!(name: "Thanalan")

expansions = Expansion.all
regions = Region.all

arr = expansions.first
thanalan = regions.first

thanalan.zones.create!(name: "Ul'Dah")
uldah = thanalan.zones.first
