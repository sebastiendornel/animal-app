User.destroy_all
Animal.destroy_all
Adoption.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# validates :name, presence: true, format: {with: /[a-zA-Z]/}
#     validates :age, presence: true, numericality: true
#     validates :address, presence: true, format: {with: /[a-zA-Z]/}
#     validates :bio, presence: true, format: {with: /[a-zA-Z]/}, length: {minimum: 5}
#     validates :password, presence: true




u1 = User.create(name: 'Carla', age: 23, address: "Burke, Virginia", pet_qty:3 , bio: "I found a bunch of kittens",  password_digest: BCrypt::Password.create('password'))
u2 = User.create(name: 'Sebastien', age: 18, address: "DC", pet_qty: 3 , bio: "Adventurer", password_digest: BCrypt::Password.create('password'))
u3 = User.create(name: 'Mary', age: 22, address: "Washington, DC",  password_digest: BCrypt::Password.create('password'))
admin = User.create(name: "Admin", age: 30, address: "Website", admin: true, password_digest: BCrypt::Password.create('password'))

shelter1 = Shelter.create

a1 = Animal.create(name: 'Lucy', breed: 'Chihuahua', bio: 'Found as a baby', age: 3, shelter: shelter1)
a2 = Animal.create(name: 'Sparky', breed: 'Pincher', bio: 'Last Owner Passed Away', age: 7, shelter: shelter1)
a3 = Animal.create(name: 'Luna', breed: 'Maltese', bio: 'Found on the Street', age: 4 , shelter: shelter1)
a4 = Animal.create(name: 'Fido', breed: 'Italian', bio: 'Kept waiting for his owner', age: 8 , shelter: shelter1)




# a1 = Animal.create(name: 'Lucy', breed: 'Chihuahua', bio: 'Found as a baby', age: 3, shelter_id: shelter1.id)
# a2 = Animal.create(name: 'Sparky', breed: 'Pincher', bio: 'Last Owner Passed Away', age: 7, shelter_id: shelter1.id)
# a3 = Animal.create(name: 'Luna', breed: 'Maltese', bio: 'Found on the Street', age: 4 , shelter_id: shelter1.id)
# a4 = Animal.create(name: 'Fido', breed: 'Italian', bio: 'Kept waiting for his owner', age: 8 , shelter_id: shelter1.id)

# ad1 = Adoption.create(animal_id: a1.id, user_id: u3.id, reason: 'Felt Identified with her story', status: "Approved")
# ad1a = Adoption.create(animal_id: a1.id, user_id: u2.id, reason: 'Felt Identified with her story')
# ad1b = Adoption.create(animal_id: a1.id, user_id: u1.id, reason: 'Felt Identified with her story')

# ad2 = Adoption.create(animal_id: a2.id, user_id: u2.id, reason: 'We have a beautiful yard he can enjoy')
# ad3 = Adoption.create(animal_id: a3.id, user_id: u2.id, reason: 'Our other animals would love to have her join the family', status: "Denied")
# ad4 = Adoption.create(animal_id: a3.id, user_id: u1.id, reason: 'I just love Animals', status: "Approved")
# ad5 = Adoption.create(animal_id: a2.id, user_id: u3.id, reason: 'Our other animals would love to have her join the family', status: "Approved")


# Animal.destroy_all
# Shelter.destroy_all
# User.destroy_all
# AdoptionProcess.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 10.times {Animal.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, shelter_id: shelter1.id, bio: Faker::Creature::Dog.meme_phrase, age: rand(1..15))}


# 15.times {User.create(name: Faker::Name.name, address: Faker::Address.street_address, age: rand(20..90), has_animals: [true, false].sample, bio: Faker::Quotes::Shakespeare.as_you_like_it_quote)}


# 5.times{AdoptionProcess.create(animal: Animal.all.sample, user: User.all.sample, status: ["approved", "declined", "pending"].sample, meeting_date: Faker::Date.forward(days: 14) )}