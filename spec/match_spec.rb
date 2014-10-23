require 'match'

describe Match do

	let(:match) { Match.new}
	let(:team1) {double :team, rating: 100}
	let(:team2) {double :team, rating: 50}

	context 'before kickoff' do


		it 'should teams' do
			expect(match.teams).to eq []
		end

		context 'predictions' do

			it 'should make a prediction of the result' do
				allow(match).to receive(:make_prediction).and_return("Chelsea will beat Arsenal")
				match.make_prediction
			end

		end

	end
end
