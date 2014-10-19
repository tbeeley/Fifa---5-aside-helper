require 'match'

describe Match do

	context 'before kickoff' do

		let(:match) { Match.new(team1, team2)}
		let(:team1) {double :team, rating: 100}
		let(:team2) {double :team, rating: 50}


		it 'should a home team' do
			expect(match.hometeam).to eq(team1)
		end

		it 'should have an away team' do
			expect(match.awayteam).to eq(team2)
		end

	end

	context 'predictions' do

		it 'should make a prediction of the result' do
			allow(match).to receive(:make_prediction).and_return('Chelsea will beat Arsenal')
			match.make_prediction
		end
	end
end
