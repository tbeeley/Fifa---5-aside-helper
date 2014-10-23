require './files.rb'

Pirlo = Player.new('Andrea Pirlo', "07841289921", "CB")

Xabi = Player.new('Xabi Alonso', "07841289921", "MD")

MC = Team.new('Manchester City', "Pellegrini", "Etihad", 5)

CFC = Team.new("Chelsea Football Club", "Mourinho", "Stamford_Bridge", 5)

CFC.add_to_first_team(Xabi)

CFC.add_to_first_team(Pirlo)

Derby = Match.new

Derby.add_teams(CFC, MC)


require './files.rb'

t = Match.new

t.run_program
