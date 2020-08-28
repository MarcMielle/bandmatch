User.destroy_all
Band.destroy_all

puts 'Creating bands and musicians...'

band1 = Band.new(name: "Overmist", music_style: "rock")
file = File.open(Rails.root.join("db/fixtures/images/bands/logo1.PNG"))
band1.avatar.attach(io: file, filename: 'logo1.PNG', content_type: 'image/PNG')
band1.save!
puts 'Band 1/7 created'

band2 = Band.new(name: "442", music_style: "rock")
file = File.open(Rails.root.join("db/fixtures/images/bands/logo2.png"))
band2.avatar.attach(io: file, filename: 'logo2.png', content_type: 'image/png')
band2.save!
puts 'Band 2/7 created'

band3 = Band.new(name: "Storm Dance Ego", music_style: "house")
file = File.open(Rails.root.join("db/fixtures/images/bands/logo3.png"))
band3.avatar.attach(io: file, filename: 'logo3.png', content_type: 'image/png')
band3.save!
puts 'Band 3/7 created'

band4 = Band.new(name: "Violin Flower's", music_style: "classique")
file = File.open(Rails.root.join("db/fixtures/images/bands/logo4.png"))
band4.avatar.attach(io: file, filename: 'logo4.png', content_type: 'image/png')
band4.save!
puts 'Band 4/7 created'

band5 = Band.new(name: "DOCIL", music_style: "folk")
file = File.open(Rails.root.join("db/fixtures/images/bands/logo5.png"))
band5.avatar.attach(io: file, filename: 'logo5.png', content_type: 'image/png')
band5.save!
puts 'Band 5/7 created'

band6 = Band.new(name: "Water Fire", music_style: "funk")
file = File.open(Rails.root.join("db/fixtures/images/bands/logo6.png"))
band6.avatar.attach(io: file, filename: 'logo6.png', content_type: 'image/png')
band6.save!
puts 'Band 6/7 created'

band7 = Band.new(name: "Brume", music_style: "classique")
file = File.open(Rails.root.join("db/fixtures/images/bands/logo7.jpg"))
band7.avatar.attach(io: file, filename: 'logo7.jpg', content_type: 'image/jpg')
band7.save!
puts 'Band 7/7 created'
puts 'All bands have been created... OH YEAAAAAH.'
puts "\u{1f609}"

user1 = User.new(
  email:    "nicolas.hbt@gmail.com",
  password: "password",
  first_name:    "Nicolas",
  last_name: "Hubert",
  age:  23,
  location:  "Nantes",
  latitude: 47.226942523237135,
  longitude: -1.5574251094395386,
  gender:    "Homme",
  years_of_experience: 2,
  band: band1,
  instrument:    "batterie",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  2,
  bio: "Nicolas, batteur débutant. Passionné de musique et plus particulièrement de rock (Nirvana, U2, Radiohead, etc), pop 80-90's et de musique instrumentale."
)

file = File.open(Rails.root.join("db/fixtures/images/users/user1.png"))
user1.avatar.attach(io: file, filename: 'user1.png', content_type: 'image/png')
user1.save!
puts 'User 1/27 created'

pref1 = Preference.new(
  instrument: "basse",
  age_min: 20,
  age_max: 30,
  gender: "Homme",
  years_of_experience_min: 5,
  weekly_rehearsal_frequency_min: 2,
  location: "Nantes"
  location_radius_in_km: 2,
  music_style: "rock",
)
pref1.save!

user2 = User.new(
  email:    "marc.mielle@gmail.com",
  password: "password",
  first_name:    "Marc",
  last_name: "Mielle",
  age:  23,
  location:  "Nantes",
  latitude: 47.228446619133024,
  longitude: -1.533128536710766,
  gender:    "Homme",
  years_of_experience: 17,
  band: band1,
  instrument:    "guitare",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  4,
  bio: "Hello ! Je suis Marc, leader du groupe Overmist. Mon père m'a mis une guitare dans les mains à l'âge de 6 ans et depuis, j'en ai fait ma passion. J'aime partager mon goût pour la musique et je me fais une joie d'enseigner la guitare sur mon temps libre."
)

file = File.open(Rails.root.join("db/fixtures/images/users/user2.png"))
user2.avatar.attach(io: file, filename: 'user2.png', content_type: 'image/png')
user2.save!
puts 'User 2/27 created'

user3 = User.new(
  email:    "tommie.petit@gmail.com",
  password: "password",
  first_name:    "Tommie",
  last_name: "Petit",
  age:  27,
  location:  "Nantes",
  latitude: 47.229255818105216,
  longitude: -1.552312556097799,
  gender:    "Homme",
  years_of_experience: 12,
  instrument:    "basse",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  3
)

file = File.open(Rails.root.join("db/fixtures/images/users/user3.png"))
user3.avatar.attach(io: file, filename: 'user3.png', content_type: 'image/png')
user3.save!
puts 'User 3/27 created'

user4 = User.new(
  email:    "elsa.toledo@gmail.com",
  password: "password",
  first_name:    "Elsa",
  last_name: "Toledo",
  age:  25,
  location:  "Saint-Herblain",
  latitude: 47.218148648897646,
  longitude: -1.6369903592577284,
  gender:    "Femme",
  years_of_experience: 10,
  instrument:    "piano",
  music_styles: ["classique"],
  weekly_rehearsal_frequency:  3
)

file = File.open(Rails.root.join("db/fixtures/images/users/user4.jpeg"))
user4.avatar.attach(io: file, filename: 'user4.jpeg', content_type: 'image/jpeg')
user4.save!
puts 'User 4/27 created'

user5 = User.new(
  email:    "mel44@gmail.com",
  password: "password",
  first_name:    "Mélanie",
  last_name: "Cipresso",
  age:  32,
  location:  "Nantes",
  latitude: 47.22174622719891,
  longitude: -1.5372898281725988,
  gender:    "Femme",
  years_of_experience: 3,
  instrument:    "chant",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user5.jpeg"))
user5.avatar.attach(io: file, filename: 'user5.jpeg', content_type: 'image/jpeg')
user5.save!
puts 'User 5/27 created'

user6 = User.new(
  email:    "anto.rock@gmail.com",
  password: "password",
  first_name:    "Anthony",
  last_name: "Fougasse",
  age:  38,
  location:  "Saint-Herblain",
  latitude: 47.20794326478688,
  longitude: -1.6450670154310498,
  gender:    "Homme",
  years_of_experience: 20,
  instrument:    "batterie",
  music_styles: ["funk"],
  weekly_rehearsal_frequency:  3
)

file = File.open(Rails.root.join("db/fixtures/images/users/user6.jpg"))
user6.avatar.attach(io: file, filename: 'user6.jpg', content_type: 'image/jpg')
user6.save!
puts 'User 6/27 created'

user7 = User.new(
  email:    "esteb44@gmail.com",
  password: "password",
  first_name:    "Esteban",
  last_name: "Hecquet",
  age:  40,
  location:  "Rezé",
  latitude: 47.183522737321724,
  longitude: -1.5407777029670822,
  gender:    "Homme",
  years_of_experience: 2,
  instrument:    "chant",
  music_styles: ["classique"],
  weekly_rehearsal_frequency:  1
)

file = File.open(Rails.root.join("db/fixtures/images/users/user7.jpeg"))
user7.avatar.attach(io: file, filename: 'user7.jpeg', content_type: 'image/jpeg')
user7.save!
puts 'User 7/27 created'

user8 = User.new(
  email:    "menard.marius@gmail.com",
  password: "password",
  first_name:    "Marius",
  last_name: "Ménard",
  age:  22,
  location:  "Trentemoult",
  latitude: 47.19157802108903,
  longitude: -1.5789418702111702,
  gender:    "Homme",
  years_of_experience: 4,
  instrument:    "guitare",
  music_styles: ["folk"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user8.jpg"))
user8.avatar.attach(io: file, filename: 'user8.jpg', content_type: 'image/jpg')
user8.save!
puts 'User 8/27 created'

user9 = User.new(
  email:    "ashish.kabra@gmail.com",
  password: "password",
  first_name:    "Ashish",
  last_name: "Kabra",
  age:  24,
  location:  "Orvault",
  latitude: 47.272547336372114,
  longitude: -1.6254050540861265,
  gender:    "Homme",
  years_of_experience: 4,
  instrument:    "guitare",
  music_styles: ["funk"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user9.jpeg"))
user9.avatar.attach(io: file, filename: 'user9.jpeg', content_type: 'image/jpeg')
user9.save!
puts 'User 9/27 created'

user10 = User.new(
  email:    "cecilou@gmail.com",
  password: "password",
  first_name:    "Cécile",
  last_name: "Madénian",
  age:  33,
  location:  "Orvault",
  latitude: 47.277058839005626,
  longitude: -1.6322543840107362,
  gender:    "Femme",
  years_of_experience: 20,
  instrument:    "piano",
  music_styles: ["classique"],
  weekly_rehearsal_frequency:  5
)

file = File.open(Rails.root.join("db/fixtures/images/users/user10.jpg"))
user10.avatar.attach(io: file, filename: 'user10.jpg', content_type: 'image/jpg')
user10.save!
puts 'User 10/27 created'
puts 'Wait, wait ! We are almost done.'
puts "\u{1f618}"

user11 = User.new(
  email:    "wenzou987@gmail.com",
  password: "password",
  first_name:    "Wenyu",
  last_name: "Yang",
  age:  20,
  location:  "Nantes",
  latitude: 47.27524468156568,
  longitude: -1.6312438937961726,
  gender:    "Femme",
  years_of_experience: 13,
  instrument:    "violon",
  music_styles: ["classique"],
  weekly_rehearsal_frequency:  5
)

file = File.open(Rails.root.join("db/fixtures/images/users/user11.jpg"))
user11.avatar.attach(io: file, filename: 'user11.jpg', content_type: 'image/jpg')
user11.save!
puts 'User 11/27 created'

user12 = User.new(
  email:    "elbg44@gmail.com",
  password: "password",
  first_name:    "Edouard",
  last_name: "Stefan",
  age:  30,
  location:  "Orvault",
  latitude: 47.2760336034527,
  longitude: -1.6264169451571209,
  gender:    "Homme",
  years_of_experience: 4,
  instrument:    "dj",
  music_styles: ["house"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user12.jpeg"))
user12.avatar.attach(io: file, filename: 'user12.jpeg', content_type: 'image/jpeg')
user12.save!
puts 'User 12/27 created'

user13 = User.new(
  email:    "elo44@gmail.com",
  password: "password",
  first_name:    "Elodie",
  last_name: "Zefira",
  age:  54,
  location:  "Nantes",
  latitude: 47.214452321006824,
  longitude: -1.5662846331969793,
  gender:    "Femme",
  years_of_experience: 30,
  instrument:    "flute",
  music_styles: ["classique"],
  weekly_rehearsal_frequency:  3
)

file = File.open(Rails.root.join("db/fixtures/images/users/user13.jpg"))
user13.avatar.attach(io: file, filename: 'user13.jpg', content_type: 'image/jpg')
user13.save!
puts 'User 13/27 created'

user14 = User.new(
  email:    "bidobido@gmail.com",
  password: "password",
  first_name:    "Eric",
  last_name: "Lelong",
  age:  28,
  location:  "Carquefou",
  latitude: 47.29620653196488,
  longitude: -1.4884428045743436,
  gender:    "Homme",
  years_of_experience: 4,
  instrument:    "basse",
  music_styles: ["jazz"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user14.jpg"))
user14.avatar.attach(io: file, filename: 'user14.jpg', content_type: 'image/jpg')
user14.save!
puts 'User 14/27 created'

user15 = User.new(
  email:    "bass44@gmail.com",
  password: "password",
  first_name:    "Stéphane",
  last_name: "Molinaro",
  age:  34,
  location:  "Bouguenais",
  latitude: 47.1809938229643,
  longitude: -1.6232901267064803,
  gender:    "Homme",
  years_of_experience: 4,
  instrument:    "basse",
  music_styles: ["blues"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user15.jpg"))
user15.avatar.attach(io: file, filename: 'user15.jpg', content_type: 'image/jpg')
user15.save!
puts 'User 15/27 created'

user16 = User.new(
  email:    "pdro44@gmail.com",
  password: "password",
  first_name:    "Pedro",
  last_name: "Hernandez",
  age:  46,
  location:  "Sautron",
  latitude: 47.25807818454346,
  longitude: -1.66156184404338,
  gender:    "Homme",
  years_of_experience: 20,
  instrument:    "basse",
  music_styles: ["folk"],
  weekly_rehearsal_frequency:  3
)

file = File.open(Rails.root.join("db/fixtures/images/users/user16.png"))
user16.avatar.attach(io: file, filename: 'user16.png', content_type: 'image/png')
user16.save!
puts 'User 16/27 created'

user17 = User.new(
  email:    "totorea@gmail.com",
  password: "password",
  first_name:    "Toréa",
  last_name: "Tessier",
  age:  28,
  location:  "Nantes",
  latitude: 47.2023695817449,
  longitude: -1.560512519233781,
  gender:    "Homme",
  years_of_experience: 1,
  instrument:    "basse",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user17.jpg"))
user17.avatar.attach(io: file, filename: 'user17.jpg', content_type: 'image/jpg')
user17.save!
puts 'User 17/27 created'

user18 = User.new(
  email:    "eloco@gmail.com",
  password: "password",
  first_name:    "Cedric",
  last_name: "Villard",
  age:  40,
  location:  "Vertou",
  latitude: 47.16640177231086,
  longitude: -1.474853602217494,
  gender:    "Homme",
  years_of_experience: 10,
  instrument:    "basse",
  music_styles: ["jazz"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user18.jpg"))
user18.avatar.attach(io: file, filename: 'user18.jpg', content_type: 'image/jpg')
user18.save!
puts 'User 18/27 created'

user19 = User.new(
  email:    "nicolo44@gmail.com",
  password: "password",
  first_name:    "Nicolas",
  last_name: "Pasquier",
  age:  28,
  location:  "Nantes",
  latitude: 47.24968171959527,
  longitude: -1.5580962854817626,
  gender:    "Homme",
  years_of_experience: 8,
  instrument:    "basse",
  music_styles: ["funk"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user19.jpeg"))
user19.avatar.attach(io: file, filename: 'user19.jpeg', content_type: 'image/jpeg')
user19.save!
puts 'User 19/27 created'

user20 = User.new(
  email:    "zmaalouf@gmail.com",
  password: "password",
  first_name:    "Zaïd",
  last_name: "Maalouf",
  age:  19,
  location:  "Vertou",
  latitude: 47.165316436116605,
  longitude: -1.4675778474907553,
  gender:    "Homme",
  years_of_experience: 2,
  instrument:    "basse",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  4
)

file = File.open(Rails.root.join("db/fixtures/images/users/user20.jpeg"))
user20.avatar.attach(io: file, filename: 'user20.jpeg', content_type: 'image/jpeg')
user20.save!
puts 'User 20/27 created'

user21 = User.new(
  email:    "alexx440@gmail.com",
  password: "password",
  first_name:    "Alexandre",
  last_name: "Duvilliers",
  age:  44,
  location:  "Carquefou",
  latitude: 47.29776656441853,
  longitude: -1.4896089085892528,
  gender:    "Homme",
  years_of_experience: 2,
  instrument:    "basse",
  music_styles: ["folk"],
  weekly_rehearsal_frequency:  1
)

file = File.open(Rails.root.join("db/fixtures/images/users/user21.jpeg"))
user21.avatar.attach(io: file, filename: 'user21.jpeg', content_type: 'image/jpeg')
user21.save!
puts 'User 21/27 created'
puts 'Soon finished !!'
puts "\u{1f418}"
puts "\u{1f418}"
puts "\u{1f418}"
puts "\u{1f418}"
puts "\u{1f418}"
puts "\u{1f418}"
puts "\u{1f418}"

user22 = User.new(
  email:    "guillaume.boudel@gmail.com",
  password: "password",
  first_name:    "Guillaume",
  last_name: "Boudel",
  age:  28,
  location:  "Orvault",
  latitude: 47.27764420123874,
  longitude: -1.6351777329146455,
  gender:    "Homme",
  years_of_experience: 20,
  instrument:    "basse",
  music_styles: ["funk"],
  weekly_rehearsal_frequency:  5
)

file = File.open(Rails.root.join("db/fixtures/images/users/user22.jpg"))
user22.avatar.attach(io: file, filename: 'user22.jpg', content_type: 'image/jpg')
user22.save!
puts 'User 22/27 created'


user23 = User.new(
  email:    "nathh44000@gmail.com",
  password: "password",
  first_name:    "Nathan",
  last_name: "Kloutz",
  age:  18,
  location:  "Carquefou",
  latitude: 47.29982487014429,
  longitude: -1.4902957917761217,
  gender:    "Homme",
  years_of_experience: 1,
  instrument:    "basse",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user23.jpg"))
user23.avatar.attach(io: file, filename: 'user23.jpg', content_type: 'image/jpg')
user23.save!
puts 'User 23/27 created'

user24 = User.new(
  email:    "pierre.gabriel@gmail.com",
  password: "password",
  first_name:    "Pierre",
  last_name: "Gabriel",
  age:  30,
  location:  "Rezé",
  latitude: 47.17253556867943,
  longitude: -1.5542212221914542,
  gender:    "Homme",
  years_of_experience: 1,
  instrument:    "basse",
  music_styles: ["jazz"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user24.jpg"))
user24.avatar.attach(io: file, filename: 'user24.jpg', content_type: 'image/jpg')
user24.save!
puts 'User 24/27 created'

user25 = User.new(
  email:    "lena.costecalde@gmail.com",
  password: "password",
  first_name:    "Léna",
  last_name: "Costecalde",
  age:  29,
  location:  "Trentemoult",
  latitude: 47.193477227476286,
  longitude: -1.5835078809993952,
  gender:    "Femme",
  years_of_experience: 2,
  instrument:    "basse",
  music_styles: ["jazz"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user25.jpeg"))
user25.avatar.attach(io: file, filename: 'user25.jpeg', content_type: 'image/jpeg')
user25.save!
puts 'User 25/27 created'

user26 = User.new(
  email:    "maureen.petit@gmail.com",
  password: "password",
  first_name:    "Maureen",
  last_name: "Petit",
  age:  20,
  location:  "Ancenis",
  latitude: 47.37170013725689,
  longitude: -1.1714697185532708,
  gender:    "Femme",
  years_of_experience: 1,
  instrument:    "basse",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  2
)

file = File.open(Rails.root.join("db/fixtures/images/users/user26.jpg"))
user26.avatar.attach(io: file, filename: 'user26.jpg', content_type: 'image/jpg')
user26.save!
puts 'User 26/27 created'

user27 = User.new(
  email:    "zhoulou44@gmail.com",
  password: "password",
  first_name:    "Zhou",
  last_name: "Wenshu",
  age:  37,
  location:  "Nantes",
  latitude: 47.215911182514276,
  longitude: -1.5367528832422006,
  gender:    "Femme",
  years_of_experience: 29,
  instrument:    "basse",
  music_styles: ["jazz"],
  weekly_rehearsal_frequency:  4
)

file = File.open(Rails.root.join("db/fixtures/images/users/user27.jpg"))
user27.avatar.attach(io: file, filename: 'user27.jpg', content_type: 'image/jpg')
user27.save!
puts 'User 27/27 created'

puts 'Finished! Now enjoy our awesome website!'
