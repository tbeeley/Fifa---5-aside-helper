require 'date'

class Team

	def initialize(name, stadium, game_capacity)
		@stadium = stadium
		@first_team = []
		@squad = []
		@name = name
		@game_capacity = game_capacity
	end

	attr_accessor :first_team, :stadium, :name, :squad, :game_capacity

	def promote(player)
		remove_from_squad(player)
		add_to_first_team(player)
	end

	def demote(player)
		remove_from_first_team(player)
		add_to_squad(player)
	end

	def add_to_first_team(player)
		@first_team << player unless first_team.count == game_capacity || player.injured?
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

	def rating
		squad.map {|player| player.rating}.inject(:+).to_f / squad.length.round(2)
	end

	def change_game_capacity_to(aside)
		@game_capacity = aside
	end

end
