class Team

	def initialize(name, manager, stadium)
		@manager = manager
		@stadium = stadium
		# For first_team do an array x 11 like in SUdoku (instead of capacity?)
		@first_team = []
		@subs = []
		@squad = []
		@rating = 50
		@name = name
	end

	attr_accessor :first_team, :subs, :manager, :stadium, :rating, :name, :squad

	def change_rating(new_rating)
		@rating = new_rating
	end

	def create_player(name, rating)
		squad << Player.new(name, rating)
	end

	#Have one central method for upgrading, one for demoting. with addplayertofirsts and another in the middle.

	def promote(player)
		remove_from_subs(player)
		add_to_first_team(player)
	end

	def demote(player)
		remove_from_first_team(player)
		add_to_subs(player)
	end

	def add_to(team_type, player)
		if team_type.count == 11
			raise 'you already have 11 players'
		else
			team_type << player
		end
	end

	def add_to_first_team(player)
		if first_team.count == 11
			raise 'you already have 11 players'
		else
			@first_team << player
		end
	end

	def remove_from_first_team(player)
		@first_team.delete(player)
	end

	def add_to_subs(player)
		if subs.count == 7
			raise 'your subs bench is full'
		else
			@subs << player
		end
	end

	def remove_from_subs(player)
		@subs.delete(player)
	end



end
