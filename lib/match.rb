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
		teams[0].add_home_advantage
		if teams[0].rating > awayteam.rating
			puts "#{teams[0].name} will beat #{teams[1].name}"
		elsif teams[0].rating == awayteam.rating
			puts "#{teams[0].name} and #{teams[1].name} will draw the match"
		else
			puts "#{teams[1].name} will beat #{teams[0].name}"
		end
	end

end
