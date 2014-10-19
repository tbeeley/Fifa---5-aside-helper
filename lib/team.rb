class Team

	def initialize(name, manager, stadium)
		@manager = manager
		@stadium = stadium
		# For firsts do an array x 11 like in SUdoku (instead of capacity?)
		@firsts = []
		@subs = []
		@rating = 50
		@name = name
	end

	attr_accessor :firsts, :subs, :manager, :stadium, :rating, :name

	def change_rating(new_rating)
		@rating = new_rating
	end

	def add_player_to_firsts(player)
		unless firsts.?
			@firsts << player
		end
	end



end
