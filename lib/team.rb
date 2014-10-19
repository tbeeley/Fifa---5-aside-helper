class Team

	def initialize(name, manager, stadium)
		@manager = manager
		@stadium = stadium
		@firsts = []
		@subs = []
		@rating = 50
		@name = name
	end

	attr_accessor :firsts, :subs, :manager, :stadium, :rating, :name

	def change_rating(new_rating)
		@rating = new_rating
	end

end
