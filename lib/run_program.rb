

def run_all
	done = false
	until done == 'n' do
			add_player
			puts "Add another player? (y/n)"
			done = gets.chomp
		end
		team.display_team
	end


	def add_player
		player = get_input
		@squad << Player.new(player)
	end

	def get_input
		puts "Please enter the player's name"
		gets.chomp
	end
