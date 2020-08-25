Band.destroy_all
User.destroy_all

puts 'Creating bands and musicians...'

band1 = Band.create!(name: "Overmist", music_style: "Rock")

user1 = User.new(
  email:    "nicolas.hbt@gmail.com",
  password: "password",
  first_name:    "Nicolas",
  last_name: "Hubert",
  age:  23,
  location:  "Nantes",
  gender:    "Homme",
  years_of_experience: 2,
  band: band1,
  instrument:    "Batterie",
  music_styles: ["Rock"],
  weekly_rehearsal_frequency:  2,
  bio: "Nicolas, batteur débutant. Passionné de musique et plus particulièrement de rock (Nirvana, U2, Radiohead, etc), pop 80-90's et de musique instrumentale."
)

=begin 
file = File.open(Rails.root.join("db/fixtures/images/users/user1.jpg"))
user1.avatar.attach(io: file, filename: 'caro.png', content_type: 'image/png') 
=end
user1.save!

user2 = User.new(
  email:    "marc.mielle@gmail.com",
  password: "password",
  first_name:    "Marc",
  last_name: "Mielle",
  age:  23,
  location:  "Nantes",
  gender:    "Homme",
  years_of_experience: 17,
  band: band1,
  instrument:    "Guitare",
  music_styles: ["Rock"],
  weekly_rehearsal_frequency:  4,
  bio: "Hello ! Je suis Marc, leader du groupe Overmist. Mon père m'a mis une guitare dans les mains à l'âge de 6 ans et depuis, j'en ai fait ma passion. J'aime partager mon goût pour la musique et je me fais une joie d'enseigner la guitare sur mon temps libre."
)
user2.save!

user3 = User.new(
  email:    "tommie.petit@gmail.com",
  password: "password",
  first_name:    "Tommie",
  last_name: "Petit",
  age:  27,
  location:  "Ancenis",
  gender:    "Homme",
  years_of_experience: 12,
  instrument:    "Bass",
  music_styles: ["Rock"],
  weekly_rehearsal_frequency:  3
)
user3.save!

user4 = User.new(

)
user4.save!

user5 = User.new(

)
user5.save!

user6 = User.new(

)
user6.save!

user7 = User.new(

)
user7.save!

user8 = User.new(

)
user8.save!

user9 = User.new(

)
user9.save! 


puts 'Finished!'
