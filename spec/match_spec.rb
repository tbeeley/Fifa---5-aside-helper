require 'match'

describe Match do

	let(:match) { Match.new }
	let(:team1) {double :team, name: "Chelsea", stadium: 'Stamford Bridge', rating: 100}
	let(:team2) {double :team, name: "Arsenal", rating: 50}

	context 'before kickoff' do


		it 'should have a teams array' do
			expect(match.teams).to eq []
		end

	end

	context 'welcoming teams' do

		before(:each) do
			match.add(team1)
		end

		it 'should be able to take in teams' do
			expect(match.teams.count).to eq 1
		end

		it 'should be able to release teams' do
			match.drop(team1)
			expect(match.teams.count).to eq 0
		end

	end

	context 'predictions' do

		before(:each) do
			match.add_teams(team1, team2)
		end

		it 'shouold be able to add teams to the Match' do
			expect(match.teams).to eq [team1, team2]
		end

		it 'should declare the fixture' do
			expect(STDOUT).to receive(:puts).with("Chelsea vs Arsenal, at Stamford Bridge on #{Date.today}")
			match.declare_fixture
		end

		it 'should show team ratings' do
			expect(STDOUT).to receive(:puts).with("Current Chelsea rating: 100")
			expect(STDOUT).to receive(:puts).with("Current Arsenal rating: 50")
			match.show_team_ratings
		end

		it 'should make a prediction of the result' do
			expect(team1).to receive(:update_total_rating)
			expect(team1).to receive(:add_home_advantage)
			expect(team2).to receive(:update_total_rating)
			expect(STDOUT).to receive(:puts).with("Chelsea will beat Arsenal")
			match.make_prediction
		end

	end

end
