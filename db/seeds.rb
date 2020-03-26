Player.destroy_all
User.destroy_all
Draft.destroy_all
Squad.destroy_all

#User
maharaj = User.create(username: "Maharaj", password: "12345")
rei = User.create(username: "Rei", password: "12345")
graham = User.create(username: "Graham", password: "12345")
eric = User.create(username:"Eric", password: "12345")

#squad_name
blue = Squad.create(squad_name: "FC Blues", user_id: maharaj)
flamingo = Squad.create(squad_name: "Flamingo City", user_id: graham)
kobayashi = Squad.create(squad_name: "FC Kobayashi", user_id: rei)
galaxy = Squad.create(squad_name: "Galaxy United", user_id: eric)

#Player List


#Forwards
vardy = Player.create(player_name: "Jamie Vardy", player_position: "FWD", player_price: (30_000_000))
jimenez = Player.create(player_name: "Raul Jimenez", player_position: "FWD", player_price: (35_000_000))
kane = Player.create(player_name: "Harry Kane", player_position: "FWD", player_price: (50_000_000))
aubameyang = Player.create(player_name: "Pierre Aubamayang", player_position: "FWD", player_price: (40_000_000))
aguero = Player.create(player_name: "Sergio Aguero", player_position: "FWD", player_price: (51_000_000))
abraham = Player.create(player_name: "Tammy Abraham", player_position: "FWD", player_price: (29_000_000))
rashford = Player.create(player_name: "Marcus Rashford", player_position: "FWD", player_price: (40_000_000))
firmino = Player.create(player_name: "Roberto Firmino", player_position: "FWD", player_price: (50_000_000))

#Midfielders
mount = Player.create(player_name: "Mason Mount", player_position: "MID", player_price: (21_000_000))
madisson = Player.create(player_name: "James Madisson", player_position: "MID", player_price: (31_000_000))
richarlison = Player.create(player_name: "Richarlison", player_position: "MID", player_price: (40_000_000))
salah = Player.create(player_name: "Mo Salah", player_position: "MID", player_price: (61_000_000))
mane = Player.create(player_name: "Sadio Mane", player_position: "MID", player_price: (60_000_000))
pulisic = Player.create(player_name: "Christian Pulisic", player_position: "MID", player_price: (51_000_000))
grealish = Player.create(player_name: "Jack Grealish", player_position: "MID", player_price: (33_000_000))
son = Player.create(player_name: "Son Heung-min", player_position: "MID", player_price: (57_000_000))
sterling = Player.create(player_name: "Raheem Sterling", player_position: "MID", player_price: (61_000_000))
fernandez = Player.create(player_name: "Bruno Fernandez", player_position: "MID", player_price: (51_000_000))

#Defenders
mcguire = Player.create(player_name: "Harry Mcguire", player_position: "DEF", player_price: (60_000_000))
ake = Player.create(player_name: "Nathan Ake", player_position: "DEF", player_price: (40_000_000))
bellerin = Player.create(player_name: "Hector Bellerin", player_position: "DEF", player_price: (44_000_000))
walker = Player.create(player_name: "Kyle Walker", player_position: "DEF", player_price: (41_000_000))
digne = Player.create(player_name: "Lucas Digne", player_position: "DEF", player_price: (39_000_000))
laporte = Player.create(player_name: "Aymeric Laporte", player_position: "DEF", player_price: (51_000_000))
virgil = Player.create(player_name: "Virgil Van Dijk", player_position: "DEF", player_price: (79_000_000))
dunk = Player.create(player_name: "Lewis Dunk", player_position: "DEF", player_price: (29_000_000))
chilwell = Player.create(player_name: "Ben Chilwell", player_position: "DEF", player_price: (39_000_000))
arnold = Player.create(player_name: "Alexander Arnold", player_position: "DEF", player_price: (51_000_000))

#Goalkeepers
loris = Player.create(player_name: "Hugo Lorris", player_position: "GK", player_price: (65_000_000))
kepa = Player.create(player_name: "Kepa", player_position: "GK", player_price: (75_000_000))
alison = Player.create(player_name: "Alison", player_position: "GK", player_price: (77_000_000))
ederson = Player.create(player_name: "Ederson", player_position: "GK", player_price: (55_000_000))
degea = Player.create(player_name: "David DeGea", player_position: "GK", player_price: (45_000_000))



Draft.create(player_id: pulisic, squad_name: blue)
Draft.create(player_id: mane, squad_name: flamingo)
Draft.create(player_id: aguero, squad_name: kobayashi)
Draft.create(player_id: dunk, squad_name: galaxy)
Draft.create(player_id: ederson, squad_name: kobayashi)
Draft.create(player_id: arnold, squad_name: blue)
Draft.create(player_id: son, squad_name: galaxy)
Draft.create(player_id: chilwell, squad_name: flamingo)

puts "Seed Completed"