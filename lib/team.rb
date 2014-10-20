class Team

	def initialize(name, manager, stadium)
		@manager = manager
		@stadium = stadium
		# For firsts do an array x 11 like in SUdoku (instead of capacity?)
		@firsts = []
		@subs = []
		@squad = []
		@rating = 50
		@name = name
	end

	attr_accessor :firsts, :subs, :manager, :stadium, :rating, :name, :squad

	def change_rating(new_rating)
		@rating = new_rating
	end

	def create_player(name, rating)
		squad << Player.new(name, rating)
	end

	def full?
		firsts.count == 11
	end

	#Have one central method for upgrading, one for demoting. with addplayertofirsts and another in the middle.

	def add_player_to_firsts(player)
		unless firsts.full?
			@firsts << player
		end
	end



end
