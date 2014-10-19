class Player

	def initialize(name, rating)
		@name = name
		@rating = rating
		recover!
	end

	attr_accessor :name, :rating

	def injured?
		@injured
	end

	def recover!
		@injured = false
	end

	def crock!
		@injured = true
	end

end
