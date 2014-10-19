class Team

	def initialize(manager, stadium)
		@manager = manager
		@stadium = stadium
		@firsts = []
		@subs = []
	end

	attr_accessor :firsts, :subs, :manager, :stadium

end
