require './files.rb'

Pirlo = Player.new('Andrea Pirlo', "07841289921", "CB", 9)

Xabi = Player.new('Xabi Alonso', "07841289921", "MD", 9)

Hart = Player.new("Joe Hart", "07841289921", "GK", 4)

MC = Team.new('Manchester City', "Pellegrini", "Etihad", 5)

CFC = Team.new("Chelsea Football Club", "Mourinho", "Stamford_Bridge", 5)

CFC.add_to_first_team(Xabi)

CFC.add_to_first_team(Pirlo)

MC.add_to_first_team(Hart)

Derby = Match.new

Derby.add_teams(CFC, MC)

Derby.match_prediction

require './files.rb'

t = Match.new

t.run_program
