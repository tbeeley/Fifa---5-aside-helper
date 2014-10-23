require 'manager'

describe Manager do

	let(:manager) { Manager.new('Mourinho')}

	it 'should have a name' do
		expect(manager.name).to eq 'Mourinho'
	end

	it 'should have teams' do
		expect(manager.teams).to eq []
	end

end
