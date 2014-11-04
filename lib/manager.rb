class Manager

	def initialize(name)
		@name = name
		@teams = []
	end

	attr_accessor :name, :teams

	def add(team)
		teams << team
	end

	def play_against(team)
		match = Match.new(teams[0],team)
		match.projection
	end

end

#team = Team.new()
#team.add_to_first_team(Player.new())

# Manager = Manager.new
# Manager.add(Team.new)
# Manager.play_first_team(another_team)
