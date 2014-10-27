class Player

	def initialize(name, phone_number, position, starting_rate)
		@name = name
		@position = position
		@rating = rating
		@performances = []
		@phone_number = phone_number
		check_number
		give_score(starting_rate)
		recover
	end

	attr_accessor :name, :rating, :performances, :phone_number, :position

	def check_number
		if phone_number[0].to_i != 0
			raise 'That number is not real'
		elsif number_length > 11
			raise 'That number is too long'
		elsif number_length < 11
			raise 'That number is too short'
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
