class Player

	def initialize(name)
		@name = name
		@rating = rating
		@performances = []
		recover!
	end

	attr_accessor :name, :rating, :performances

	def injured?
		@injured
	end

	def recover!
		@injured = false
	end

	def crock!
		@injured = true
	end

	def give_score(number)
		@performances << number
	end

end
