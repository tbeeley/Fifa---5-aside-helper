require 'team'

describe Team do

	let(:team) 		{ Team.new('Chelsea', "Mourinho", stadium, 5) }
	let(:stadium) 	{ double :stadium, atmosphere: 6, updated_atmosphere: 7}
	let(:player)  	{ double :player, rating: 7, injured?: false, update_player_rating: 9 }
	let(:player2) 	{ double :player, rating: 8, injured?: false, update_player_rating: 9}
	let(:injured_player) { double :player, injured?: true}



	context 'when initialized' do

		it 'should have a name' do
			expect(team.name).to eq 'Chelsea'
		end

		it 'should have a manager' do
			expect(team.manager).to eq 'Mourinho'

		end

		it 'should have a stadium' do
			expect(team.stadium).to eq(stadium)
		end

		it 'should have a game capacity' do
			expect(team.game_capacity).to eq 5
		end

	end

	context 'team management' do

		it 'should have a starting eleven' do
			expect(team.first_team).to eq []
		end

		it 'should have a squad' do
			expect(team.squad).to eq []
		end

	end

	context 'creating and organising players' do

		it 'should be able to create a player and put in squad' do
			team.create_player('Andrea Pirlo', "07841289921", "CM")
			expect(team.squad.count).to eq 1
		end

		it 'should be able to add a player to the firsts' do
			team.add_to_first_team(player)
			expect(team.first_team.count).to eq 1
		end

		it 'should limit the first_team to 11 players' do
			expect( lambda { 12.times {team.add_to_first_team(player) }}).to raise_error 'you already have a full side'
		end

		it 'cant field an injured player' do
			expect{ lambda (team.add_to_first_team(injured_player))}.to raise_error 'you cannot field an injured player'

		end

		it 'should be able to add a player to the squad' do
			team.add_to_squad(player)
			expect(team.squad.count).to eq 1
		end

		it 'should be able to promote players to the first_team' do
			team.promote(player)
			expect(team.first_team.count).to eq 1
			expect(team.squad.count).to eq 0
		end

		it 'should be able to demote players to the squad' do
			team.demote(player)
			expect(team.squad.count).to eq 1
			expect(team.first_team.count).to eq 0
		end

		it 'should be able to change the game_capacity' do
			team.change_game_capacity_to(11)
			expect(team.game_capacity).to eq 11
		end

	end


	context 'Ratings:' do

		before(:each) do
			team.add_to_first_team(player)
			team.add_to_first_team(player2)
		end

		it 'should know average player rating' do
			expect(player).to receive(:update_player_rating)
			expect(player2).to receive(:update_player_rating)
			expect(team.calculate_first_team_rating).to eq 7.50
		end

		it 'should update team rating' do
			expect(stadium).to receive(:updated_atmosphere)
			team.update_total_rating
			expect(team.rating).to eq 7.25
		end

	end

end
