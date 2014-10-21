class Team

	def initialize(name, manager, stadium)
		@manager = manager
		@stadium = stadium
		@first_team = []
		@subs = []
		@squad = []
		@rating = rating
		@name = name
	end

	attr_accessor :first_team, :subs, :manager, :stadium, :rating, :name, :squad

	def create_player(name, rating)
		squad << Player.new(name, rating)
	end

	def promote(player)
		remove_from_subs(player)
		add_to_first_team(player)
	end

	def demote(player)
		remove_from_first_team(player)
		add_to_subs(player)
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

	def calculate_player_rating
		ratings = first_team.map {|player| player.rating}
		(ratings.inject(:+).to_f / first_team.length).round
	end

	def update_total_rating
		f = stadium.updated_atmosphere
		@rating = (calculate_player_rating + f + manager.rating) / 3
	end

end
