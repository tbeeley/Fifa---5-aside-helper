require 'manager'

describe Manager do

	let(:manager) { Manager.new('Diego Simeone', 88)}
	let(:team) 	  { double :team }

	context 'when created' do

		it 'should have a name' do
			expect(manager.name).to eq('Diego Simeone')
		end

		it 'should have a rating' do
			expect(manager.rating).to eq 88
		end

	end
end
