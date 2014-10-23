class Match

	def initialize
		@teams = []
	end

	attr_accessor :teams

	def declare_fixture
		puts "#{teams[0].name} vs #{teams[1].name}"
	end

	def make_prediction
		teams[0].update_total_rating
		teams[1].update_total_rating
		teams[0].add_home_advantage
		if teams[0].rating > teams[1].rating
			puts "#{teams[0].name} will beat #{teams[1].name}"
		elsif teams[0].rating == teams[1].rating
			puts "#{teams[0].name} and #{teams[1].name} will draw the match"
		else
			puts "#{teams[1].name} will beat #{teams[0].name}"
		end
	end

	def add_teams(home_team, away_team)
		@teams << home_team
		@teams << away_team
	end


	def create_match
		declare_fixture
		make_prediction
	end

end
