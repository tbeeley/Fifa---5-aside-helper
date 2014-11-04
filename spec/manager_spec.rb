require 'manager'

describe Manager do

	let(:manager) { Manager.new('Mourinho')}
	let(:match)	{ double :match }
	let(:team1) {double :team, name: "Chelsea", stadium: 'Stamford Bridge', rating: 8.0}
	let(:team2) {double :team, name: "Arsenal", rating: 8.4}

	context 'when created' do

		it 'should have a name' do
			expect(manager.name).to eq 'Mourinho'
		end

		it 'should have teams' do
			expect(manager.teams).to eq []
		end

	end

	context 'As a master tactician' do

		before(:each) do
			manager.add(team1)
		end

		it 'should be able to add a team' do
			expect(manager.teams).to eq [team1]
		end

		it 'should be able to play against another team' do
			expect(manager.play_against(team2)).to eq "Chelsea vs Arsenal, at Stamford Bridge on #{Date.today}. Chelsea will beat Arsenal. Current Chelsea rating: 8.0, Current Arsenal rating: 8.4"
		end

	end

end
