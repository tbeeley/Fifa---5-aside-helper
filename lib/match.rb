class Match

	def initialize
		@teams = []
	end

	attr_accessor :teams

	def declare_fixture
		"#{teams[0].name} vs #{teams[1].name}"
	end

	def make_prediction
		teams[0].update_total_rating
		teams[1].update_total_rating
		if teams[0].rating > awayteam.rating
			puts "#{teams[0].name} will beat #{teams[1].name}"
		elsif teams[0].rating == awayteam.rating
			puts "#{teams[0].name} and #{teams[1].name} will draw the match"
		else
			puts "#{teams[1].name} will beat #{teams[0].name}"
		end
	end

	def run_program
		done = false
		until done == 'y' do
				create_team
				puts "Are you happy with everthing you've entered so far? (y/n)"
				done = gets.chomp
			end
			teams[0].add_team_players
		end


		def create_team
			manager = get_input("your manager's name")
			name = get_input("your team's name")
			stadium = get_input("your home ground")
			game_capacity = get_input("the number of players on the pitch (5-aside etc)")
			@teams << Team.new(name, manager, stadium, game_capacity )
		end

		def get_input(type)
			puts "Please enter #{type}"
			gets.chomp
		end


	end
