class Player

	def initialize(name, phone_number, starting_rate)
		@name = name
		@rating = rating
		@performances = []
		@phone_number = phone_number
		check_number
		give_score(starting_rate)
		recover
	end

	attr_accessor :name, :rating, :performances, :phone_number

	def check_number
		unless phone_number[0].to_i == 0 && number_length == 11
			raise 'That number is not legit'
		end
	end

	def number_length
		phone_number.length
	end

	def injured?
		@injured
	end

	def recover
		@injured = false
	end

	def crock
		@injured = true
	end

	def give_score(number)
		@performances << number
	end

	def update_player_rating
		@rating = performances.inject(:+).to_f / performances.length
	end

end
