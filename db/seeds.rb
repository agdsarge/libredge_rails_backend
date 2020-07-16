# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserGame.destroy_all
Message.destroy_all

User.destroy_all
Game.destroy_all



mtm = User.create(username: "mary_tyler_moore", password: "password", email: "mtm@comedy.com", country: "USA", bio: "I'm an experienced woman; I've been around ... Well, all right, I might not have been around, but I've been ... nearby.", rating: 1600)
bean = User.create(username: "mr_bean", password: "password", email: "mr_b_and_teddy@bbc.co.uk", country: "UK", bio: "teddy", rating: 800)
lk = User.create(username: "leslie_knope", password: "password", email: "leslie@pawnee.gov", country: "USA", bio: "I like JJ's waffles", rating: 1500)
rmn = User.create(username: "richard_nixon", password: "password", email: "rmn37@whitehouse.gov", country: "USA", bio: "Sock it to me.", rating: 1500)

test_game1 = Game.create(memorable_string_name: "FirstSimpleTestGame", final_score: 400)
test_game2 = Game.create(memorable_string_name: "SecondSimpleTestGame", final_score: 400)
test_game3 = Game.create(memorable_string_name: "ThirdSimpleTestGame", final_score: 400)

UserGame.create(user: mtm, game: test_game1, direction: :north)
UserGame.create(user: bean, game: test_game1, direction: :south)
UserGame.create(user: lk, game: test_game1, direction: :east)
UserGame.create(user: rmn, game: test_game1, direction: :west)


mesg1 = Message.create(user: rmn, game: test_game1, body: "I am not a crook.")
mesg2 = Message.create(user: mtm, game: test_game1, body: "I miss Carl Reiner")
mesg3 = Message.create(user: lk, game: test_game1, body: "Carl Reiner once guest-starred on Parks and Rec.")
mesg4 = Message.create(user: bean, game: test_game1, body: "Bean. Teddy Bean Bean Teddy Bean.")
mesg5 = Message.create(user: rmn, game: test_game1, body: "The overgrown English child speaks the truth.")
mesg6 = Message.create(user: mtm, game: test_game1, body: "Isn't it all wonderful!")
