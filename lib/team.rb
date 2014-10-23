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

	def create_player(name, phone_number, position, starting_rate)
		squad << Player.new(name, phone_number, position, starting_rate)
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
		if first_team.count == game_capacity
			raise 'you already have a full side'
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

	def add_home_advantage
		@rating = rating + 0.5
	end

	def update_total_rating
		@rating = calculate_first_team_rating.round(2)
	end

	def change_game_capacity_to(aside)
		@game_capacity = aside
	end




	#Running the Program

	def run_program
		done = false
		until done == 'y' do
				create_team
				puts "Are you happy with everthing you've entered so far? (y/n)"
				done = gets.chomp
			end
			team_organisation
		end

		def team_organisation
			teams[0].add_team_players
			puts "Now were going to add your players and their details"
		end

		# def create_team
		# 	questions_format("your manager's name", "your team's name", "your home ground", "the number of players on the pitch (5-aside etc)")
		# 	@teams << Team.new(param1, param2, param3, param4 )
		# end

		# def questions_format (input1, input2, input3, input4)
		# 	param1 = get_input(input1)
		# 	param2 = get_input(input2)
		# 	param3 = get_input(input3)
		# 	param4 = get_input(input4)
		# end

		# def add_player
		# 	questions_format("the player's name", "the player's position", "the player's phone number", "the player's starting_rate(0-10)")
		# 	@squad << Player.new(param1, param2, param3, param4)
		# end

		def create_team
			name = get_input("your team's name")
			stadium = get_input("your home ground")
			game_capacity = get_input("the number of players on the pitch (5-aside etc)")

			@teams << Team.new(name, stadium, game_capacity )
		end

		def add_player
			player = get_input("the player's name")
			position = get_input("the player's position")
			phone_number = get_input("the player's phone number")
			starting_rate = get_input("the player's starting_rate(0-10)")

			@squad << Player.new(player, phone_number, position, starting_rate)
		end

		def add_team_players
			done = false
			until done == 'n' do
					add_player
					puts "Add another player? (y/n)"
					done = gets.chomp
				end
				display_to_user
			end

			def display_to_user
				display_all_players
				text_team
			end


			def get_input(type)
				puts "Please enter #{type}"
				gets.chomp
			end

			def display_all_players
				puts "Squad for #{game_capacity}.aside match, at #{stadium} on #{Date.today}"
				squad.each do |player|
					puts "#{player.name}, #{player.position}"
				end
				puts "Please let me know ASAP if you have to pull out"
			end

			def text_team
				#add twillio feature where it texts all the players?
			end

		end
