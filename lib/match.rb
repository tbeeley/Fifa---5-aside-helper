class Match

	def initialize(hometeam, awayteam)
		@hometeam = hometeam
		@awayteam = awayteam
	end

	attr_accessor :hometeam, :awayteam

	def declare_fixture
		puts "#{hometeam.name} vs #{awayteam.name}, at #{hometeam.stadium} on #{Date.today}"
	end

	def make_prediction
		update_teams_rating
		declare_prediction
	end

	def declare_prediction
		hometeam_rating_higher ? hometeam_wins : awayteam_wins
	end

	def hometeam_rating_higher
		hometeam.rating > awayteam.rating
	end

	def hometeam_wins
		puts "#{hometeam.name} will beat #{awayteam.name}"
	end

	def awayteam_wins
		puts "#{home_team.name} and #{away_team.name} will draw the match"
	end

	def update_teams_rating
		hometeam.update_total_rating
		awayteam.update_total_rating
		hometeam.add_home_advantage
	end

	def match_prediction
		declare_fixture
		make_prediction
		show_team_ratings
	end

	def show_team_ratings
		puts "Current #{hometeam.name} rating: #{hometeam.rating}"
		puts "Current #{awayteam.name} rating: #{awayteam.rating}"
	end

	def add_teams(hometeam, awayteam)
		@teams << hometeam
		@teams << awayteam
	end


end
