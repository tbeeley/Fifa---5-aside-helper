class Match

	HOME_ADVANTAGE = 7

	def initialize(hometeam, awayteam)
		@hometeam = hometeam
		@awayteam = awayteam
	end

	attr_accessor :hometeam, :awayteam

	def projection
		declare_fixture
		declare_prediction
		show_team_ratings
	end

	def declare_prediction
		(hometeam.rating + HOME_ADVANTAGE) > awayteam.rating ? hometeam_wins : awayteam_wins
	end

	def declare_fixture
		"#{hometeam.name} vs #{awayteam.name}, at #{hometeam.stadium} on #{Date.today}"
	end

	def hometeam_wins
		"#{hometeam.name} will beat #{awayteam.name}"
	end

	def awayteam_wins
		"#{awayteam.name} will beat #{hometeam.name}"
	end

	def show_team_ratings
		"Current #{hometeam.name} rating: #{hometeam.rating}, Current #{awayteam.name} rating: #{awayteam.rating}"
	end

end
