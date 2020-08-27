User.destroy_all
Band.destroy_all


puts 'Creating bands and musicians...'

band1 = Band.new(name: "Overmist", music_style: "rock")
file = File.open(Rails.root.join("db/fixtures/images/users/user1.png"))
band1.avatar.attach(io: file, filename: 'user1.png', content_type: 'image/png') 
band1.save!

band2 = Band.new(name: "442", music_style: "rock")
band3 = Band.new(name: "Storm Dance Ego", music_style: "house")
band4 = Band.new(name: "Violin Flower's", music_style: "classique")
band5 = Band.new(name: "DOCIL", music_style: "folk")
band6 = Band.new(name: "Water Fire", music_style: "funk")
band7 = Band.new(name: "Brume", music_style: "classique")

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
  instrument:    "batterie",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  2,
  bio: "Nicolas, batteur débutant. Passionné de musique et plus particulièrement de rock (Nirvana, U2, Radiohead, etc), pop 80-90's et de musique instrumentale."
)
user1.save!

=begin file = File.open(Rails.root.join("db/fixtures/images/users/user1.png"))
user1.avatar.attach(io: file, filename: 'user1.png', content_type: 'image/png') 
user1.save! 
=end

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
  instrument:    "guitare",
  music_styles: ["rock"],
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
  instrument:    "basse",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  3
)
user3.save!

user4 = User.new(
  email:    "elsa.toledo@gmail.com",
  password: "password",
  first_name:    "Elsa",
  last_name: "Toledo",
  age:  25,
  location:  "Saint-Herblain",
  gender:    "Femme",
  years_of_experience: 10,
  instrument:    "piano",
  music_styles: ["classique"],
  weekly_rehearsal_frequency:  3
)
user4.save!

user5 = User.new(
  email:    "mel44@gmail.com",
  password: "password",
  first_name:    "Mélanie",
  last_name: "Cipresso",
  age:  32,
  location:  "Nantes",
  gender:    "Femme",
  years_of_experience: 3,
  instrument:    "chant",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  2
)
user5.save!

user6 = User.new(
  email:    "anto.rock@gmail.com",
  password: "password",
  first_name:    "Anthony",
  last_name: "Fougasse",
  age:  38,
  location:  "Saint-Herblain",
  gender:    "Homme",
  years_of_experience: 20,
  instrument:    "batterie",
  music_styles: ["funk"],
  weekly_rehearsal_frequency:  3
)
user6.save!

user7 = User.new(
  email:    "esteb44@gmail.com",
  password: "password",
  first_name:    "Esteban",
  last_name: "Hecquet",
  age:  40,
  location:  "Rezé",
  gender:    "Homme",
  years_of_experience: 2,
  instrument:    "chant",
  music_styles: ["classique"],
  weekly_rehearsal_frequency:  1
)
user7.save!

user8 = User.new(
  email:    "menard.marius@gmail.com",
  password: "password",
  first_name:    "Marius",
  last_name: "Ménard",
  age:  22,
  location:  "Trentemoult",
  gender:    "Homme",
  years_of_experience: 4,
  instrument:    "guitare",
  music_styles: ["folk"],
  weekly_rehearsal_frequency:  2
)
user8.save!

user9 = User.new(
  email:    "ashish.kabra@gmail.com",
  password: "password",
  first_name:    "Ashish",
  last_name: "Kabra",
  age:  24,
  location:  "Orvault",
  gender:    "Homme",
  years_of_experience: 4,
  instrument:    "guitare",
  music_styles: ["funk"],
  weekly_rehearsal_frequency:  2
)
user9.save!

user10 = User.new(
  email:    "cecilou@gmail.com",
  password: "password",
  first_name:    "Cécile",
  last_name: "Madénian",
  age:  33,
  location:  "Orvault",
  gender:    "Femme",
  years_of_experience: 20,
  instrument:    "piano",
  music_styles: ["classique"],
  weekly_rehearsal_frequency:  5
)
user10.save!

user11 = User.new(
  email:    "wenzou987@gmail.com",
  password: "password",
  first_name:    "Wenyu",
  last_name: "Yang",
  age:  20,
  location:  "Nantes",
  gender:    "Femme",
  years_of_experience: 13,
  instrument:    "violon",
  music_styles: ["classique"],
  weekly_rehearsal_frequency:  5
)
user11.save!

user12 = User.new(
  email:    "elbg44@gmail.com",
  password: "password",
  first_name:    "Edouard",
  last_name: "Stefan",
  age:  30,
  location:  "Orvault",
  gender:    "Homme",
  years_of_experience: 4,
  instrument:    "dj",
  music_styles: ["house"],
  weekly_rehearsal_frequency:  2
)
user12.save!

user13 = User.new(
  email:    "elo44@gmail.com",
  password: "password",
  first_name:    "Elodie",
  last_name: "Zefira",
  age:  54,
  location:  "Nantes",
  gender:    "Femme",
  years_of_experience: 30,
  instrument:    "flute",
  music_styles: ["classique"],
  weekly_rehearsal_frequency:  3
)
user13.save!

user14 = User.new(
  email:    "bidobido@gmail.com",
  password: "password",
  first_name:    "Eric",
  last_name: "Lelong",
  age:  28,
  location:  "Carquefou",
  gender:    "Homme",
  years_of_experience: 4,
  instrument:    "basse",
  music_styles: ["jazz"],
  weekly_rehearsal_frequency:  2
)
user14.save!

user15 = User.new(
  email:    "bass44@gmail.com",
  password: "password",
  first_name:    "Stéphane",
  last_name: "Molinaro",
  age:  34,
  location:  "Bouguenais",
  gender:    "Homme",
  years_of_experience: 4,
  instrument:    "basse",
  music_styles: ["blues"],
  weekly_rehearsal_frequency:  2
)
user15.save!

user16 = User.new(
  email:    "pdro44@gmail.com",
  password: "password",
  first_name:    "Pedro",
  last_name: "Hernandez",
  age:  46,
  location:  "Sautron",
  gender:    "Homme",
  years_of_experience: 20,
  instrument:    "basse",
  music_styles: ["folk"],
  weekly_rehearsal_frequency:  3
)
user16.save!

user17 = User.new(
  email:    "totorea@gmail.com",
  password: "password",
  first_name:    "Toréa",
  last_name: "Tessier",
  age:  28,
  location:  "Nantes",
  gender:    "Homme",
  years_of_experience: 1,
  instrument:    "basse",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  2
)
user17.save!

user18 = User.new(
  email:    "eloco@gmail.com",
  password: "password",
  first_name:    "Cedric",
  last_name: "Villard",
  age:  40,
  location:  "Vertou",
  gender:    "Homme",
  years_of_experience: 10,
  instrument:    "basse",
  music_styles: ["jazz"],
  weekly_rehearsal_frequency:  2
)
user18.save!

user19 = User.new(
  email:    "nicolo44@gmail.com",
  password: "password",
  first_name:    "Nicolas",
  last_name: "Pasquier",
  age:  28,
  location:  "Nantes",
  gender:    "Homme",
  years_of_experience: 8,
  instrument:    "basse",
  music_styles: ["funk"],
  weekly_rehearsal_frequency:  2
)
user19.save!

user20 = User.new(
  email:    "zmaalouf@gmail.com",
  password: "password",
  first_name:    "Zaïd",
  last_name: "Maalouf",
  age:  19,
  location:  "Vertou",
  gender:    "Homme",
  years_of_experience: 2,
  instrument:    "basse",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  4
)
user20.save!

user21 = User.new(
  email:    "alexx440@gmail.com",
  password: "password",
  first_name:    "Alexandre",
  last_name: "Duvilliers",
  age:  44,
  location:  "Carquefou",
  gender:    "Homme",
  years_of_experience: 2,
  instrument:    "basse",
  music_styles: ["folk"],
  weekly_rehearsal_frequency:  1
)
user21.save!

user22 = User.new(
  email:    "guillaume.boudel@gmail.com",
  password: "password",
  first_name:    "Guillaume",
  last_name: "Boudel",
  age:  28,
  location:  "Orvault",
  gender:    "Homme",
  years_of_experience: 20,
  instrument:    "basse",
  music_styles: ["funk"],
  weekly_rehearsal_frequency:  5
)
user22.save!

user23 = User.new(
  email:    "nathh44000@gmail.com",
  password: "password",
  first_name:    "Nathan",
  last_name: "Kloutz",
  age:  18,
  location:  "Carquefou",
  gender:    "Homme",
  years_of_experience: 1,
  instrument:    "basse",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  2
)
user23.save!

user24 = User.new(
  email:    "pierre.gabriel@gmail.com",
  password: "password",
  first_name:    "Pierre",
  last_name: "Gabriel",
  age:  30,
  location:  "Rezé",
  gender:    "Homme",
  years_of_experience: 1,
  instrument:    "basse",
  music_styles: ["jazz"],
  weekly_rehearsal_frequency:  2
)
user24.save!

user25 = User.new(
  email:    "lena.costecalde@gmail.com",
  password: "password",
  first_name:    "Léna",
  last_name: "Costecalde",
  age:  29,
  location:  "Trentemoult",
  gender:    "Femme",
  years_of_experience: 2,
  instrument:    "basse",
  music_styles: ["jazz"],
  weekly_rehearsal_frequency:  2
)
user25.save!

user26 = User.new(
  email:    "maureen.petit@gmail.com",
  password: "password",
  first_name:    "Maureen",
  last_name: "Petit",
  age:  20,
  location:  "La Montagne",
  gender:    "Femme",
  years_of_experience: 1,
  instrument:    "basse",
  music_styles: ["rock"],
  weekly_rehearsal_frequency:  2
)
user26.save!

user27 = User.new(
  email:    "zhoulou44@gmail.com",
  password: "password",
  first_name:    "Zhou",
  last_name: "Wenshu",
  age:  37,
  location:  "Nantes",
  gender:    "Femme",
  years_of_experience: 29,
  instrument:    "basse",
  music_styles: ["jazz"],
  weekly_rehearsal_frequency:  4
)
user27.save!

puts 'Finished!'
