require 'player'

describe Player do

	let(:player) { Player.new('Andrea Pirlo', 87) }

	context 'when created' do

		it 'should have a name' do
			expect(player.name).to eq 'Andrea Pirlo'
		end

		it 'should have a rating' do
			expect(player.rating).to eq 87
		end

	end

end
