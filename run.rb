require './files.rb'

Stamford_Bridge = Stadium.new(90)

Etihad = Stadium.new(30)

Pellegrini = Manager.new('Pellegrini', 90)

Mourinho = Manager.new('Mourinho', 100)

MC = Team.new('Manchester City', Pellegrini, Etihad)

CFC = Team.new("Chelsea Football Club", Mourinho, Stamford_Bridge)

Derby = Match.new(CFC, MC)
