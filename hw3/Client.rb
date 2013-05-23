class Client

	attr_accessor :name, :age, :gender, :kids, :pets

	def initialize(name, age, gender, kids)
		@name = name
		@age = age 
		@gender = gender
		#@adopted = adopted
		@kids = kids
		@pets = []
	end

	def to_s 
		puts "Name: #{@name}  / Age: #{@age} Gender: #{@gender}  / Kids: #{@kids} / Pets: #{@pets}"
	end
end

