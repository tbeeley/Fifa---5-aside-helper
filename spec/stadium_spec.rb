require 'stadium'

describe Stadium do

	let(:stadium) { Stadium.new(60)}

	context 'when created' do

		it 'should have a rating' do
			expect(stadium.rating).to eq 60
		end

		it 'should be full' do
			expect(stadium.at_capacity?).to eq true
		end

	end

	context 'in build up to kickoff' do

		it 'can be below capacity' do
			stadium.empty!
			expect(stadium.at_capacity?).to be false
		end

		it 'ajusts rating based on atmosphere' do
			stadium.update_rating
			expect(stadium.rating).to eq 80
		end

	end

end
