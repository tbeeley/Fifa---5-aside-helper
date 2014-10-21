require 'team'

describe Team do

	let(:team) 		{ Team.new('Chelsea', manager, stadium) }
	let(:manager) 	{ double :manager, rating: 100 }
	let(:stadium) 	{ double :stadium, atmosphere: 60, updated_atmosphere: 80}
	let(:player)  	{ double :player, rating: 100 }
	let(:player2) 	{ double :player, rating: 80}


	context 'when initialized' do

		it 'should have a name' do
			expect(team.name).to eq 'Chelsea'
		end

		it 'should have a manager' do
			expect(team.manager).to eq(manager)
		end

		it 'should have a stadium' do
			expect(team.stadium).to eq(stadium)
		end

	end

	context 'team management' do

		it 'should have a starting eleven' do
			expect(team.first_team).to eq []
		end

		it 'should have a subs bench' do
			expect(team.subs).to eq []
		end

		it 'should have a squard' do
			expect(team.squad).to eq []
		end

	end

	context 'creating and organising players' do

		it 'should be able to create a player and put in squad' do
			team.create_player('Andrea Pirlo')
			expect(team.squad.count).to eq 1
		end

		it 'should be able to add a player to the firsts' do
			team.add_to_first_team(player)
			expect(team.first_team.count).to eq 1
		end

		it 'should limit the first_team to 11 players' do
			expect( lambda { 12.times {team.add_to_first_team(player) }}).to raise_error 'you already have 11 players'
		end

		it 'should be able to add a player to the subs' do
			team.add_to_subs(player)
			expect(team.subs.count).to eq 1
		end

		it 'should be able to promote players to the first_team' do
			team.promote(player)
			expect(team.first_team.count).to eq 1
			expect(team.subs.count).to eq 0
		end

		it 'should be able to demote players to the subs' do
			team.demote(player)
			expect(team.subs.count).to eq 1
			expect(team.first_team.count).to eq 0
		end

	end


	context 'Ratings:' do

		before(:each) do
			team.add_to_first_team(player)
			team.add_to_first_team(player2)
		end

		it 'should know average player rating' do
			expect(team.calculate_player_rating).to eq 90
		end

		it 'should update team rating' do
			expect(stadium).to receive(:updated_atmosphere)
			team.update_total_rating(stadium)
			expect(team.rating).to eq 90
		end

	end

end
