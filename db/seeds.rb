User.destroy_all
Animal.destroy_all
Adoption.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


carla = User.create(name: 'Carla', age: 23, address: "Burke, Virginia", pet_qty:3 , bio: "I found a bunch of kittens",  password_digest: BCrypt::Password.create('password'))
sebastien = User.create(name: 'Sebastien', age: 18, address: "DC", pet_qty: 3 , bio: "Adventurer", password_digest: BCrypt::Password.create('password'))
mary = User.create(name: 'Mary', age: 22, address: "Washington, DC",  password_digest: BCrypt::Password.create('password'))
admin = User.create(name: "Admin", age: 30, address: "Website", admin: true, password_digest: BCrypt::Password.create('password'))

5.times {User.create(name: Faker::FunnyName.two_word_name, age: [1..40].sample, address: Faker::Address.street_address, password_digest: BCrypt::Password.create('password'))}

shelter = Shelter.create

# lucy = Animal.create(name: 'Lucy', breed: 'Chihuahua', bio: 'Found as a baby', age: 3, shelter: shelter,)
# sparky = Animal.create(name: 'Sparky', breed: 'Pincher', bio: 'Last Owner Passed Away', age: 7, shelter: shelter,)
# luna = Animal.create(name: 'Luna', breed: 'Maltese', bio: 'Found on the Street', age: 4 , shelter: shelter,)
# fido = Animal.create(name: 'Fido', breed: 'Greyhound', bio: 'Kept waiting for his owner', age: 8 , shelter: shelter,)

# 15.times {Animal.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, bio: Faker::Creature::Dog.meme_phrase, age: 3, shelter: shelter)}
dog1 = Animal.create(name: Faker::Creature::Dog.name, breed: "German Shepherd", bio: Faker::Creature::Dog.meme_phrase, age: 6, shelter: shelter, img: "german_shepherd.jpeg")#"https://images.unsplash.com/photo-1554226980-0b6cf5de6771?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
dog2 = Animal.create(name: Faker::Creature::Dog.name, breed: "Border Collie", bio: Faker::Creature::Dog.meme_phrase, age: 3, shelter: shelter, img: "https://images.unsplash.com/photo-1503256207526-0d5d80fa2f47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=666&q=80")
dog3 = Animal.create(name: Faker::Creature::Dog.name, breed: "Pitbull", bio: Faker::Creature::Dog.meme_phrase, age: 3, shelter: shelter, img:"https://images.unsplash.com/photo-1561963120-ed52164b5b2e?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
dog4 = Animal.create(name: Faker::Creature::Dog.name, breed: "Cockapoo", bio: Faker::Creature::Dog.meme_phrase, age: 1, shelter: shelter, img: "https://images.unsplash.com/photo-1518378188025-22bd89516ee2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60")
dog5 = Animal.create(name: Faker::Creature::Dog.name, breed: "Chihuahua", bio: Faker::Creature::Dog.meme_phrase, age: 3, shelter: shelter, img:"https://images.unsplash.com/photo-1586326448571-8c6e1e473bad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
dog6 = Animal.create(name: Faker::Creature::Dog.name, breed: "Shepherd Mix", bio: Faker::Creature::Dog.meme_phrase, age: 1, shelter: shelter, img:"https://images.unsplash.com/photo-1534351450181-ea9f78427fe8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")
dog7 = Animal.create(name: Faker::Creature::Dog.name, breed: "Lab Mix", bio: Faker::Creature::Dog.meme_phrase, age: 7, shelter: shelter, img:"https://images.unsplash.com/photo-1562462863-42d40916e6b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60")
dog8 = Animal.create(name: Faker::Creature::Dog.name, breed: "Dachshund", bio: Faker::Creature::Dog.meme_phrase, age: 3, shelter: shelter, img:"https://images.unsplash.com/photo-1511732831640-a201294ac90e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
dog9 = Animal.create(name: Faker::Creature::Dog.name, breed: "Husky", bio: Faker::Creature::Dog.meme_phrase, age: 3, shelter: shelter, img:"https://images.unsplash.com/photo-1563889958751-bac9d543bdbf?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
dog10 = Animal.create(name: Faker::Creature::Dog.name, breed: "French Bulldog", bio: Faker::Creature::Dog.meme_phrase, age: 3, shelter: shelter, img:"https://images.unsplash.com/photo-1524173988983-845c4353965b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
dog11 = Animal.create(name: Faker::Creature::Dog.name, breed: "Golden Retriever", bio: Faker::Creature::Dog.meme_phrase, age: 3, shelter: shelter, img:"https://images.unsplash.com/photo-1526489550178-7bd5d9944f4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
dog12 = Animal.create(name: Faker::Creature::Dog.name, breed: "Pug", bio: Faker::Creature::Dog.meme_phrase, age: 4, shelter: shelter, img:"https://images.unsplash.com/photo-1536298191882-3b2dd65a853b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")

# adoptions
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



