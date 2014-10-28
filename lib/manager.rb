class Manager

	def initialize(name)
		@name = name
		@teams = []
	end

	attr_accessor :name, :teams

	def play(team)
		teams.delete(team)
	end

	def prepare(team)
		teams << team
	end

end
