require 'match'

describe Match do

	let(:match) { Match.new(team1, team2) }
	let(:team1) {double :team, name: "Chelsea", stadium: 'Stamford Bridge', rating: 100}
	let(:team2) {double :team, name: "Arsenal", rating: 50}

	context 'before kickoff' do

		it 'should have two teams' do
			expect(match.hometeam).to eq team1
			expect(match.awayteam).to eq team2
		end

	end

	context 'predictions' do

		it 'should declare the fixture' do
			expect(match.declare_fixture).to eq "Chelsea vs Arsenal, at Stamford Bridge on #{Date.today}"
		end

		it 'should show team ratings' do
			expect(match.show_team_ratings).to eq "Current Chelsea rating: 100 Current Arsenal rating: 50"
		end

		it 'should make a prediction of the result' do
			expect(team1).to receive(:update_total_rating)
			expect(team1).to receive(:add_home_advantage)
			expect(team2).to receive(:update_total_rating)
			expect(match.make_prediction).to eq "Chelsea will beat Arsenal"
		end


	end

end
