class Match

	def initialize(hometeam, awayteam)
		@hometeam = hometeam
		@awayteam = awayteam
	end

	attr_accessor :hometeam, :awayteam

	def make_prediction
		update_teams_rating
		declare_prediction
	end

	def update_teams_rating
		hometeam.update_total_rating
		awayteam.update_total_rating
		hometeam.add_home_advantage
	end

	def declare_prediction
		hometeam_rating_higher ? hometeam_wins : awayteam_wins
	end

	def hometeam_rating_higher
		hometeam.rating > awayteam.rating
	end

	def match_prediction
		declare_fixture
		make_prediction
		show_team_ratings
	end

	def declare_fixture
		"#{hometeam.name} vs #{awayteam.name}, at #{hometeam.stadium} on #{Date.today}"
	end

	def hometeam_wins
		"#{hometeam.name} will beat #{awayteam.name}"
	end

	def awayteam_wins
		"#{home_team.name} and #{away_team.name} will draw the match"
	end

	def show_team_ratings
		"Current #{hometeam.name} rating: #{hometeam.rating}, Current #{awayteam.name} rating: #{awayteam.rating}"
	end

end
