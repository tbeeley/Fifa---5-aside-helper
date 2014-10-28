require 'manager'

describe Manager do

	let(:manager) { Manager.new('Mourinho')}
	let(:match)	{ double :match }
	let(:team)	{ double :team }

	context 'when created' do

		it 'should have a name' do
			expect(manager.name).to eq 'Mourinho'
		end

		it 'should have teams' do
			expect(manager.teams).to eq []
		end

	end

	context 'As a master tactician' do

		it 'should be able to play against another team' do
			manager.prepare(team)
			manager.play(team)
			expect(manager.teams.count).to eq 0
		end

	end

end
