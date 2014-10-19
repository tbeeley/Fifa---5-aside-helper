require 'match'

describe Match do

	context 'before kickoff' do

		let(:match) { Match.new(team1, team2)}
		let(:team1) {double :team}
		let(:team2) {double :team}


		it 'should a home team' do
			expect(match.hometeam).to eq(team1)
		end

		it 'should have an away team' do
			expect(match.awayteam).to eq(team2)
		end

	end
end
