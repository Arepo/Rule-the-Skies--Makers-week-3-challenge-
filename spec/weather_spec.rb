require 'weather'


class WeatherTest; include Weather; end

describe Weather do

	let(:plane) { Plane.new }
	let(:tester) { WeatherTest.new }
	let(:airport) { Airport.new }

# Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport
	context 'weather conditions' do
		

		it 'can be stormy' do
			srand 6
			expect(tester).to be_stormy
		end

		it "usually isn't" do
			srand 1
			expect(tester).not_to be_stormy
		end

		it 'a plane cannot start flying when there is a storm brewing' do
			srand 1
			airport.bring_er_in(plane)
			srand 6
			airport.banish_plane(plane)
			expect(plane).not_to be_flying
	    end

	    it 'a plane cannot leave the hangar when there is a storm brewing' do
	    	srand 1
	    	airport.bring_er_in(plane)
			srand 6
			expect(airport.plane_count).to eq 1
			airport.banish_plane(plane)
	    end
	      
	    it 'a plane cannot stop flying in the middle of a storm' do
	    	srand 6
	    	airport.bring_er_in(plane)
	    	expect(plane).to be_flying
	   	end
    end
end