class Manager

	def initialize(name)
		@name = name
		@teams = []
	end

	attr_accessor :name, :teams

	def play(team)
		teams.delete(team)
	end

	def prepare(team)
		teams << team
	end

	# Running the Program

	def run_program
		done = false
		until done == 'y' do
				create_team
				puts "Are you happy with everthing you've entered so far? (y/n)"
				done = gets.chomp
			end
			team_organisation
			display_to_user
		end

		def team_organisation
			puts "Now were going to add your players and their details"
			add_team_players
		end

		def create_team
			name = get_input("your team's name")
			stadium = get_input("your home ground")
			game_capacity = get_input("the number of players on the pitch (5-aside etc)")

			create_new_team(name, stadium, game_capacity)
		end

		def create_new_team(name, stadium, game_capacity)
			@teams << Team.new(name, stadium, game_capacity )
		end

		def add_player
			player = get_input("a player's name")
			position = get_input("the player's position")
			phone_number = get_input("the player's phone number")
			starting_rate = get_input("the player's starting_rate(0-10)")

			create_player(player, phone_number, position, starting_rate)
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
				puts "Squad for #{hometeam.game_capacity}.aside match, at #{away_team
				.stadium} on #{Date.today}"
				hometeam.squad.each do |player|
					puts "#{player.name}, #{player.position}"
				end
				puts "Please let me know ASAP if you have to pull out"
			end

			def text_team
				#add twillio feature where it texts all the players?
			end

		end




		# 	# # def create_team
		# 	# # 	questions_format("your manager's name", "your team's name", "your home ground", "the number of players on the pitch (5-aside etc)")
		# 	# # 	@teams << Team.new(param1, param2, param3, param4 )
		# 	# # end

		# 	# # def questions_format (input1, input2, input3, input4)
		# 	# # 	param1 = get_input(input1)
		# 	# # 	param2 = get_input(input2)
		# 	# # 	param3 = get_input(input3)
		# 	# # 	param4 = get_input(input4)
		# 	# # end

		# 	# # def add_player
		# 	# # 	questions_format("the player's name", "the player's position", "the player's phone number", "the player's starting_rate(0-10)")
		# 	# # 	@squad << Player.new(param1, param2, param3, param4)
		# 	# # end
