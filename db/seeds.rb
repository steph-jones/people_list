# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 12.times do
#     Person.create(
#         first_name: Faker::Movies::LordOfTheRings.character,
#         last_name: "LOTR",
#         age: Faker::Number.between(1, 100),
#         hair_color: Faker::Color.color_name,
#         eye_color: Faker::Color.color_name,
#         gender: Faker::Gender.binary_type,
#         alive: Faker::Boolean.boolean(0.6)
#     )
#     end


#count = @people.length
my_class = Person.all
class_count = my_class.count.to_i
id_values =  Person.all.pluck(:id) 

class_count.times do |a|
    Person.update(id_values[a], 
        planet: Faker::Movies::StarWars.planet
    )
end

@house = ['Gryffindor', 'Hufflepuff', 'Ravenclaw', 'Slytherin']
class_count.times do |a|
    Person.update(id_values[a], 
        hogwarts_house: @house.sample
    )
end
