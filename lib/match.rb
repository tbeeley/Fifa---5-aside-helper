class Match

	def initialize(hometeam, awayteam)
		@hometeam = hometeam
		@awayteam = awayteam
	end

	attr_accessor :hometeam, :awayteam

	def make_prediction
		#This still doesn't return their names, but it does know who should win.
		if hometeam.rating > awayteam.rating
			puts '#{hometeam.name} will beat #{awayteam.name}'
		else
			puts '#{awayteam.name} will beat #{hometeam.name}'
		end
	end

end
