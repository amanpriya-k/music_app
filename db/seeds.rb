# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Album.destroy_all
Band.destroy_all
Track.destroy_all

od = Band.create(name: 'One Direction')
be = Band.create(name: 'The Beatles')
ar = Band.create(name: 'Ariana Grande')

a1 = Album.create(title: 'Made in the AM', year: 2015, band_id: od.id, studio_recorded: true)
Track.create(album_id: a1.id, title: 'Perfect', ord: 1, regular: true)
Track.create(album_id: a1.id, title: 'Drag Me Down', ord: 2, regular: true)
Track.create(album_id: a1.id, title: 'Girl Almighty', ord: 3, regular: false)

a2 = Album.create(title: 'Four', year: 2016, band_id: od.id, studio_recorded: true)
Track.create(album_id: a2.id, title: 'My Girl', ord: 1, regular: true)
Track.create(album_id: a2.id, title: 'Tomorrow', ord: 2, regular: true)

a3 = Album.create(title: 'Abbey Road', year: 1969, band_id: be.id, studio_recorded: false)
Track.create(album_id: a3.id, title: 'Come Together', ord: 1, regular: true)
Track.create(album_id: a3.id, title: 'Let it Be', ord: 2, regular: true)


a4 = Album.create(title: 'Sgt. Peppers Lonely Heart', year: 1967, band_id: be.id, studio_recorded: true)
Track.create(album_id: a4.id, title: 'Lucy in the Sky', ord: 1, regular: false)

a5 = Album.create(title: 'Sweetener', year: 2018, band_id: ar.id, studio_recorded: true)
Track.create(album_id: a5.id, title: 'God is a Woman', ord: 1, regular: true)
Track.create(album_id: a5.id, title: 'No Tears Left to Cry', ord: 2, regular: true)


a6 = Album.create(title: 'Dangerous Woman', year: 2016, band_id: ar.id, studio_recorded: true)
Track.create(album_id: a6.id, title: 'Dangerous Woman', ord: 1, regular: true)
Track.create(album_id: a6.id, title: 'Greedy', ord: 2, regular: true)
