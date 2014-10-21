require './files.rb'

Pirlo = Player.new('Andrea Pirlo', 80)

Xabi = Player.new('Xabi Alonso', 100)

Stamford_Bridge = Stadium.new(60)

Etihad = Stadium.new(30)

Pellegrini = Manager.new('Pellegrini', 90)

Mourinho = Manager.new('Mourinho', 100)

MC = Team.new('Manchester City', Pellegrini, Etihad)

CFC = Team.new("Chelsea Football Club", Mourinho, Stamford_Bridge)

Derby = Match.new(CFC, MC)

CFC.add_to_first_team(Xabi)

CFC.add_to_first_team(Pirlo)
