class Match

	def initialize(hometeam, awayteam)
		@hometeam = hometeam
		@awayteam = awayteam
	end

	attr_accessor :hometeam, :awayteam

	def declare_fixture
		"#{hometeam.name} vs #{awayteam.name}"
	end

	def make_prediction
		#Here will be a method like: update_ratings
		if hometeam.rating > awayteam.rating
			puts "#{hometeam.name} will beat #{awayteam.name}"
		elsif hometeam.rating == awayteam.rating
			puts "#{hometeam.name} and #{awayteam.name} will draw the match"
		else
			puts "#{awayteam.name} will beat #{hometeam.name}"
		end
	end

end

