class Match

	def initialize(hometeam, awayteam)
		@hometeam = hometeam
		@awayteam = awayteam
	end

	attr_accessor :hometeam, :awayteam

	def make_prediction
		#This still doesn't return their names, but it does know who should win.
		if hometeam.rating > awayteam.rating
			'#{hometeam.name} will beat #{awayteam.name}'
		else
			'#{awayteam.name} will beat #{hometeam.name}'
		end
	end

	def declare_result
	end

end
