require 'player'

describe Player do

	let(:player) { Player.new('Andrea Pirlo') }

	context 'when created' do

		it 'should have a name' do
			expect(player.name).to eq 'Andrea Pirlo'
		end

		#it 'should have a rating' do
		#	expect(player.rating).to eq
		#end

		it 'should have a performances count' do
			expect(player.performances).to eq []
		end

		it 'should not be injured' do
			expect(player.injured?).to eq false
		end

		it 'should be able to injure a player' do
			expect(player.injured?).to eq false
			player.crock!
			expect(player.injured?).to eq true
		end

		it 'should be able to be given a perfomance score' do
			player.give_score(8)
			expect(player.performances).to eq [8]
		end

	end

end
