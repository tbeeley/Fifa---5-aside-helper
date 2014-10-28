class Match

	def initialize
		@teams = []
	end

	attr_accessor :teams

	def add(team)
		@teams << team
	end

	def drop(team)
		@teams.delete(team)
	end

	def home_team
		teams[0]
	end

	def away_team
		teams[1]
	end

	def declare_fixture
		puts "#{home_team.name} vs #{away_team.name}, at #{home_team.stadium} on #{Date.today}"
	end


	def make_prediction
		update_teams_rating
		declare_prediction
	end

	def declare_prediction
		home_team_rating_higher ? hometeam_wins : awayteam_wins
	end

	def home_team_rating_higher
		home_team.rating > away_team.rating
	end

	def away_team_rating_higher
		away_team.rating < home_team.rating
	end

	def hometeam_wins
		puts "#{home_team.name} will beat #{away_team.name}"
	end

	def awayteam_wins
		puts "#{home_team.name} and #{away_team.name} will draw the match"
	end

	def update_teams_rating
		home_team.update_total_rating
		away_team.update_total_rating
		home_team.add_home_advantage
	end

	def match_prediction
		declare_fixture
		make_prediction
		show_team_ratings
	end

	def show_team_ratings
		puts "Current #{home_team.name} rating: #{home_team.rating}"
		puts "Current #{away_team.name} rating: #{away_team.rating}"
	end

	def add_teams(home_team, away_team)
		@teams << home_team
		@teams << away_team
	end


end
