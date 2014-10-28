require 'player'

describe Player do

	let(:player) { Player.new('Andrea Pirlo', "07841289921", 7) }
	let(:wrong_number) { Player.new("Danny Mills", "07841289922345", 3)}

	context 'when created' do

		it 'should have a name' do
			expect(player.name).to eq 'Andrea Pirlo'
		end

		it 'should have a starting rating' do
			expect(player.performances).to eq [7]
		end

		it 'should not be injured' do
			expect(player.injured?).to eq false
		end

		it 'should have a phone_number' do
			expect(player.phone_number).to eq "07841289921"
		end

		it 'should not accept an illegitimate contact number' do
			expect{ lambda(wrong_number)}.to raise_error("Please enter a legitimate phone number")
		end

	end

	context 'managing players' do

		it 'should be able to injure a player' do
			expect(player.injured?).to eq false
			player.crock
			expect(player.injured?).to eq true
		end

		before(:each) do
			player.add_to_performances(8)
			player.add_to_performances(6)
		end

		it 'should be able to be given a perfomance score' do
			expect(player.performances).to eq [7, 8, 6]
		end

		it 'should update players ratings given perfomrances' do
			player.update_player_rating
			expect(player.rating).to eq 7
		end

	end

end
