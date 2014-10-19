require 'team'

describe Team do

	let(:team) { Team.new(manager) }
	let(:manager) { double :manager }

	context 'when created' do

		it 'should have a starting eleven' do
			expect(team.firsts).to eq []
		end

		it 'should have a subs bench' do
			expect(team.subs).to eq []
		end

		it 'should have a manager' do
			expect(team.manager).to eq(manager)
		end

	end

end
