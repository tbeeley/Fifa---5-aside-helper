class Match

	def initialize
		@teams = []
	end

	attr_accessor :teams

	def declare_fixture
		puts "#{teams[0].name} vs #{teams[1].name}, at #{teams[0].stadium} on #{Date.today}"
	end

	def make_prediction
		teams[0].update_total_rating
		teams[1].update_total_rating
		teams[0].add_home_advantage
		if teams[0].rating > teams[1].rating
			puts "#{teams[0].name} will beat #{teams[1].name}"
		elsif teams[0].rating == teams[1].rating
			puts "#{teams[0].name} and #{teams[1].name} will draw the match"
		else teams[1].rating > teams[0].rating
			puts "#{teams[1].name} will beat #{teams[0].name}"
		end
	end

	def show_team_ratings
		puts "Current #{teams[0].name} rating: #{teams[0].rating}"
		puts "Current #{teams[1].name} rating: #{teams[1].rating}"
	end

	def add_teams(home_team, away_team)
		@teams << home_team
		@teams << away_team
	end

	def match_prediction
		declare_fixture
		make_prediction
		show_team_ratings
	end

end
