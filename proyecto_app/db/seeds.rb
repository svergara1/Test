# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seed with Admin User"
admin = User.create(
    :email => "admin@admin.cl",
    :admin => true,
    :password => "123456",
    :password_confirmation => "123456",
)

Artist.destroy_all
Song.destroy_all
Band.destroy_all
Album.destroy_all



bandas = Band.create([{
	:id => 1,
    :name => "Coldplay",
},
{
	:id => 2,
    :name => "The Killers",
 },
{
	:id => 3,
    :name => "Mon Laferte",
 }])

artistas = Artist.create([{
	:id => 1,
    :name => "Guy",
    :lastname => "Berryman",
    :band_id => 1,
},
{
	:id => 2,
	:name => "Jonny",
    :lastname => "Buckland",
    :band_id => 1,
 },
 {
	:id => 3,
	:name => "Will",
    :lastname => "Champion",
    :band_id => 1,
 },
{
	:id => 4,
	:name => "Chris",
    :lastname => "Martin",
    :band_id => 1,
 },
 {
	:id => 5,
	:name => "Brandon",
    :lastname => "Flowers",
    :band_id => 2,
 },
 {
	:id => 6,
	:name => "Dave",
    :lastname => "Keuning",
    :band_id => 2,
 },
 {
	:id => 7,
	:name => "Dell",
    :lastname => "Neal",
    :band_id => 2,
 },
 {
	:id => 8,
	:name => "Mark",
    :lastname => "Stoermer",
    :band_id => 2,
 },
 {
	:id => 9,
	:name => "Mon",
    :lastname => "Laferte",
    :band_id => 3,
 }])


albumes = Album.create([{
	:id => 1,
    :name => "La Chica de Rojo",
    :band_id => 3,
    :released_date => 10.days.ago,
},
{
	:id => 2,
	:name => "Mon Laferte Vol.1",
    :band_id => 3,
    :released_date => 10.days.ago,
 },
 {
	:id => 3,
	:name => "La Trenza",
    :band_id => 3,
    :released_date => 10.days.ago,
 },
 {
	:id => 4,
	:name => "Hot Fuss",
    :band_id => 2,
    :released_date => 10.days.ago,
 },
 {
	:id => 5,
	:name => "Wonderful Wonderful",
    :band_id => 2,
    :released_date => 10.days.ago,
 },
 {
	:id => 6,
	:name => "A Head Full of Dreams",
    :band_id => 1,
    :released_date => 10.days.ago,
 },
 {
	:id => 7,
	:name => "Mylo Xyloto",
    :band_id => 1,
    :released_date => 10.days.ago,
 }])

canciones = Song.create([{
	:id => 1,
    :name => "Tu Vida sin Mi",
    :album_id => 1,
    :duration => 3,
    :released_date => 10.days.ago,
},
{
	:id => 2,
	:name => "Las Cosas de la Mañana",
    :album_id => 1,
    :duration => 3,
    :released_date => 10.days.ago
},
{
	:id => 3,
	:name => "Falta Falta",
    :album_id => 2,
    :duration => 3,
    :released_date => 10.days.ago
},
{
	:id => 4,
	:name => "Songs About You",
    :album_id => 4,
    :duration => 3,
    :released_date => 10.days.ago
},
{
	:id => 5,
	:name => "Human",
    :album_id => 4,
    :duration => 3,
    :released_date => 10.days.ago
},
{
	:id => 6,
	:name => "Lets Go Dancing",
    :album_id => 4,
    :duration => 3,
    :released_date => 10.days.ago
},
{
	:id => 7,
	:name => "Me Before You",
    :album_id => 5,
    :duration => 3,
    :released_date => 10.days.ago
},
{
	:id => 8,
	:name => "Stars Full of Lights",
    :album_id => 5,
    :duration => 3,
    :released_date => 10.days.ago
},
{
	:id => 9,
	:name => "Around The World",
    :album_id => 6,
    :duration => 3,
    :released_date => 10.days.ago
},
{
	:id => 10,
	:name => "Before The Sunrise",
    :album_id => 7,
    :duration => 3,
    :released_date => 10.days.ago
},
{
	:id => 11,
	:name => "After The Moon",
    :album_id => 7,
    :duration => 3,
    :released_date => 10.days.ago
},
{
	:id => 12,
	:name => "Clocks And Clocks",
    :album_id => 7,
    :duration => 3,
    :released_date => 10.days.ago
}])






p "Created #{Song.count} songs"
p "Created #{Artist.count} artists"
p "Created #{Album.count} albums"
p "Created #{Band.count} bands"