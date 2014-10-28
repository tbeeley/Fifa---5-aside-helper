class Player

	def initialize(name, phone_number, starting_score)
		@name = name
		@rating = rating
		@performances = []
		@phone_number = phone_number
		check_phone_number
		add_to_performances(starting_score)
		recover
	end

	attr_accessor :name, :rating, :performances, :phone_number

	def check_phone_number
		unless phone_number[0].to_i == 0 && number_length == 11
			raise 'Please enter a legitimate phone number'
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

	def add_to_performances(starting_score)
		@performances << starting_score
	end

	def update_player_rating
		@rating = performances.inject(:+).to_f / performances.length
	end

end
