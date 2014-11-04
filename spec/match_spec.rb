require 'match'

describe Match do

	let(:match) { Match.new(team1, team2) }
	let(:team1) {double :team, name: "Chelsea", stadium: 'Stamford Bridge', rating: 80}
	let(:team2) {double :team, name: "Arsenal", rating: 86}

	context 'before kickoff' do

		it 'should have two teams' do
			expect(match.hometeam).to eq team1
			expect(match.awayteam).to eq team2
		end

	end

	context 'predictions' do

		it 'should declare the fixture' do
			expect(match.declare_fixture).to eq "Chelsea vs Arsenal, at Stamford Bridge on #{Date.today}. "
		end

		it 'should show team ratings' do
			expect(match.show_team_ratings).to eq "Current Chelsea rating: 80, Current Arsenal rating: 86"
		end

		it 'should make a prediction of the result' do
			match2 = Match.new(team2, team1)
			expect(team2).to receive(:rating)
			expect(team1).to receive(:rating)
			expect(match2.declare_prediction).to eq "Arsenal will beat Chelsea. "
		end

		it 'should account for home advantage' do
			expect(team1).to receive(:rating)
			expect(team2).to receive(:rating)
			expect(match.declare_prediction).to eq "Chelsea will beat Arsenal. "
		end

	end

end
