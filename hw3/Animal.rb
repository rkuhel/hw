class Animal 
	attr_accessor :name, :breed, :age, :gender, :toys, :owner

	def initialize(name, breed, age, gender, toys, owner)
		@name = name
		@breed = breed
		@age = age
		@gender = gender
		@toys = toys 
		@owner = owner 
	end 

	def to_s
		puts "Name #{@name} / Breed #{@breed} / Age #{@age} / Gender #{gender} / Toys #{toys}" 
	end 

end



