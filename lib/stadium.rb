class Stadium

	def initialize(atmosphere)
		@atmosphere = atmosphere
		fill!
	end

	attr_accessor :atmosphere

	def at_capacity?
		@full
	end

	def fill!
		@full = true
	end

	def empty!
		@full = false
	end

	def update_atmosphere
		if at_capacity?
			@atmosphere = (atmosphere + 100) / 2
		else
			@atmosphere = atmosphere / 2
		end
	end


end
