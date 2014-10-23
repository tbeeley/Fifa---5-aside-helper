require './files.rb'

Pirlo = Player.new('Andrea Pirlo')

Xabi = Player.new('Xabi Alonso')

Stamford_Bridge = Stadium.new(60)

Etihad = Stadium.new(30)

Pellegrini = Manager.new('Pellegrini', 90)

Mourinho = Manager.new('Mourinho', 100)

MC = Team.new('Manchester City', Pellegrini, Etihad, 5)

CFC = Team.new("Chelsea Football Club", Mourinho, Stamford_Bridge, 5)

Derby = Match.new(CFC, MC)

CFC.add_to_first_team(Xabi)

CFC.add_to_first_team(Pirlo)


require './files.rb'

t = Match.new

t.run_program
