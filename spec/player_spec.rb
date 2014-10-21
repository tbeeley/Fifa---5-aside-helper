require 'player'

describe Player do

	let(:player) { Player.new('Andrea Pirlo') }

	context 'when created' do

		it 'should have a name' do
			expect(player.name).to eq 'Andrea Pirlo'
		end

		it 'should have a performances count' do
			expect(player.performances).to eq []
		end

		it 'should not be injured' do
			expect(player.injured?).to eq false
		end

	end

	context 'managing players' do

		it 'should be able to injure a player' do
			expect(player.injured?).to eq false
			player.crock!
			expect(player.injured?).to eq true
		end

		before(:each) do
			player.give_score(8)
			player.give_score(6)
		end

		it 'should be able to be given a perfomance score' do
			expect(player.performances).to eq [8, 6]
		end

		it 'should update players ratings given perfomrances' do
			player.update_player_rating
			expect(player.rating).to eq 7
		end

	end

end
