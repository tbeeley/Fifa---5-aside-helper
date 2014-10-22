class Team

	def initialize(name, manager, stadium, game_capacity)
		@manager = manager
		@stadium = stadium
		@first_team = []
		@squad = []
		@rating = rating
		@name = name
		@game_capacity = game_capacity
	end

	attr_accessor :first_team, :manager, :stadium, :rating, :name, :squad, :game_capacity

	def create_player(name)
		squad << Player.new(name)
	end

	def promote(player)
		remove_from_squad(player)
		add_to_first_team(player)
	end

	def demote(player)
		remove_from_first_team(player)
		add_to_squad(player)
	end

	def add_to_first_team(player)
		if first_team.count == 11
			raise 'you already have 11 players'
		elsif player.injured?
			raise 'you cannot field an injured player'
		else
			@first_team << player
		end
	end

	def add_to_squad(player)
		@squad << player
	end

	def remove_from_first_team(player)
		@first_team.delete(player)
	end

	def remove_from_squad(player)
		@squad.delete(player)
	end

	def update_ratings
		first_team.each { |player| player.update_player_rating }
	end

	def calculate_first_team_rating
		update_ratings

		#Talk to a coach about this. The > ratings = bit
		ratings = first_team.map {|player| player.rating}
		(ratings.inject(:+).to_f / first_team.length)
	end

	def update_total_rating
		@rating = ((calculate_first_team_rating + stadium.updated_atmosphere + manager.rating) / 3).round(2)
	end

end
