class Stadium

	def initialize(rating)
		@rating = rating
		@atmosphere = atmosphere
		fill!
	end

	attr_accessor :rating, :atmosphere

	def at_capacity?
		@full
	end

	def fill!
		@full = true
	end

	def empty!
		@full = false
	end

	def update_rating
		if at_capacity?
			@rating = (rating + 100) / 2
		else
			@rating = (rating + 50) / 2
		end
	end


end
