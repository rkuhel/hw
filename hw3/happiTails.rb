require_relative "Client"
require_relative "Animal"

=begin 
Work in pairs!
You are the manager at HappiTails animal shelter. You need to do the following:
Manage the clients coming into the shelter. Track their names, ages, gender, kids and the number of pets they have.
Manage the animals. Track their names, breed, age, gender and their favorite toys.
A client will want to come and see the list of available animals to adopt
A client will want to come in and give up their animal for adoption
A client will want to list the animals in the shelter
A client will want to list the clients

=end
client1 = Client.new("Tom Bailey", "23", "Male", false)
client2 = Client.new("Liz Taylor", "26", "Female", false)
client3 = Client.new("Shawn Cooper", "25", "Male", true )

pet1 = Animal.new("Airbud", "Golden Retriever", "3", "male", "chew-toy", client1)
pet2 = Animal.new("Fido", "Poodle", "2", "female", "tennis ball", "no owner")
pet3 = Animal.new("Clover", "German Sheperd", "1", "male", "doll", client1)
pet4 = Animal.new("Dilbert", "Poodle", "2", "female", "tennis ball", client3)


client1.pets = [pet1, pet3]
client3.pets = [pet4]

puts client1.name.to_s + " " + client1.pets.to_s



