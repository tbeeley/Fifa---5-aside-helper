class Team

	def initialize(manager)
		@manager = manager
		@firsts = []
		@subs = []
	end

	attr_accessor :firsts, :subs, :manager

end
