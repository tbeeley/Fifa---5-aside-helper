require 'date'

class Team

	def initialize(name, stadium, game_capacity)
		@stadium = stadium
		@first_team = []
		@squad = []
		@rating = rating
		@name = name
		@game_capacity = game_capacity
	end

	attr_accessor :first_team, :stadium, :rating, :name, :squad, :game_capacity

	def create_player(name, phone_number, starting_rate)
		squad << Player.new(name, phone_number, starting_rate)
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
		unless first_team.count == game_capacity || player.injured?
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
		squad.each { |player| player.update_player_rating }
	end

	def calculate_squad_rating
		update_ratings
		squad.map {|player| player.rating}.inject(:+).to_f / squad.length
	end

	def add_home_advantage
		@rating = rating + 0.5
	end

	def update_total_rating
		@rating = calculate_squad_rating.round(2)
	end

	def change_game_capacity_to(aside)
		@game_capacity = aside
	end

end
