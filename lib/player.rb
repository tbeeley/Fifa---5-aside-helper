class Player

	def initialize(name, phone_number, position)
		@name = name
		@position = position
		@rating = rating
		@performances = []
		@phone_number = phone_number
		check_number(phone_number)
		recover!
	end

	attr_accessor :name, :rating, :performances, :phone_number, :position

	def check_number(phone_number)
		if phone_number[0].to_i != 0
			raise 'That number is not real'
		elsif phone_number.length > 11
			raise 'That number is too long'
		elsif phone_number.length < 11
			raise 'That number is too short'
		end
	end

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

	def update_player_rating
		@rating = performances.inject(:+).to_f / performances.length
	end

end
