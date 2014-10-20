require 'team'

describe Team do

	let(:team) { Team.new('Chelsea', manager, stadium) }
	let(:manager) { double :manager }
	let(:stadium) { double :stadium }
	let(:player)  { double :player  }

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

		it 'should have a default rating of 50' do
			expect(team.rating).to eq 50
		end

	end

	context 'team management' do

		it 'should be able to manually change rating' do
			expect(team.rating).to eq 50
			team.change_rating(100)
			expect(team.rating).to eq 100
		end

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
			expect(team.squad.count).to eq 0
			team.create_player('Andrea Pirlo', 88)
			expect(team.squad.count).to eq 1
		end

		it 'should be able to add a player to the firsts' do
			expect(team.first_team.count).to eq 0
			team.add_to_first_team(player)
			expect(team.first_team.count).to eq 1
		end

		it 'should limit the first_team to 11 players' do
			expect(team.first_team.count).to eq 0
			expect( lambda { 12.times {team.add_to_first_team(player) }}).to raise_error 'you already have 11 players'
		end

		it 'should be able to add a player to the subs' do
			expect(team.subs.count).to eq 0
			team.add_to_subs(player)
			expect(team.subs.count).to eq 1
		end

		it 'should be able to promote players to the first_team' do
			team.add_to_subs(player)
			expect(team.first_team.count).to eq 0
			expect(team.subs.count).to eq 1
			team.promote(player)
			expect(team.first_team.count).to eq 1
			expect(team.subs.count).to eq 0
		end

		it 'should be able to demote players to the subs' do
			team.add_to_first_team(player)
			expect(team.subs.count).to eq 0
			expect(team.first_team.count).to eq 1
			team.demote(player)
			expect(team.subs.count).to eq 1
			expect(team.first_team.count).to eq 0
		end

	end

end
