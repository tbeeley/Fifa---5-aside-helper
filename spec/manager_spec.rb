require 'manager'

describe Manager do

	let(:manager) { Manager.new('Mourinho')}

	context 'when created' do


		it 'should have a name' do
			expect(manager.name).to eq 'Mourinho'
		end

		it 'should have teams' do
			expect(manager.teams).to eq []
		end

	end

	context 'As a master tactician' do

		it 'should be able to create a team' do
			manager.create_new_team("Chelsea", 'Stamford Bridge', 7)
			expect(manager.teams.count).to eq 1
		end

		# it 'should be able to pit his team against another' do

		# 	manager.play(team)
		# 	expect.
		# 		end

	end
	#How on earth do i test all this stuff?

end
