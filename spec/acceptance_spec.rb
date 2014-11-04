require 'team'
require 'manager'
require 'player'
require 'match'

describe do

	let(:manager)	{ Manager.new('Thomas')}
	let(:team1)     { Team.new('Makers Academy Students', '25 City Road', 5) }
	let(:player1) 	{ Player.new('Michiel', "07841289924", 9) }
	let(:player2) 	{ Player.new('Jamie', "07841289951", 8) }
	let(:player3) 	{ Player.new('Dave', "07841289621", 7) }
	let(:player4) 	{ Player.new('Nicola', "07841289721", 6) }
	let(:player5) 	{ Player.new('Eddie', "07841289821", 5) }

	let(:team2)		{ Team.new('Makers Academy Tutors', '25 City Road', 5) }
	let(:player6) 	{ Player.new('Sam', "07841489924", 7) }
	let(:player7) 	{ Player.new('Enrique', "07831289951", 6) }
	let(:player8) 	{ Player.new('Alex', "07845289621", 5) }
	let(:player9) 	{ Player.new('Mihai', "07841349721", 4) }
	let(:player10) 	{ Player.new('Stephen', "07841229821", 3) }

	it 'should be able to run through the program' do
		team1.add_to_first_team(player1)
		team1.add_to_first_team(player2)
		team1.add_to_first_team(player3)
		team1.add_to_first_team(player4)
		team1.add_to_first_team(player5)
		manager.add(team1)

		team2.add_to_first_team(player6)
		team2.add_to_first_team(player7)
		team2.add_to_first_team(player8)
		team2.add_to_first_team(player9)
		team2.add_to_first_team(player10)

		expect(manager.play_against(team2)). to eq 'Makers Academy Students vs Makers Academy Tutors, at 25 City Road on 2014-11-04. Makers Academy Students will beat Makers Academy Tutors. Current Makers Academy Students rating: 7.0, Current Makers Academy Tutors rating: 5.0'
	end

end
