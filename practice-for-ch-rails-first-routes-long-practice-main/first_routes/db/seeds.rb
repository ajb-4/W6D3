# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

alex = User.create(username: "Alex")
fanyi = User.new(username: "Fanyi").save!
mike = User.create(username: "Mike")

cat_photo = Artwork.create(title: "meowow",image_url:"xyz",artist_id:3)

moma = ArtworkShare.create(artwork_id: 1, viewer_id: 1)
moma_2 = ArtworkShare.create(artwork_id: 1, viewer_id: 2)


artworkshare.rb