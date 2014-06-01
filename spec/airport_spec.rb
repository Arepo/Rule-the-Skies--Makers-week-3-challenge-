require 'airport'

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport and how that is impermented.
#
# If the airport is full then no planes can land
describe Airport do
  let(:airport) { Airport.new }
  let(:plane) { double :plane, land: :plane, take_off: :plane }

  context 'plane storage' do
  	it 'starts off with no planes' do
  		expect(airport.hangar).to eq []
  	end
  end
  
  context 'taking off and landing' do
    it 'a plane can land' do
    	expect(plane).to receive(:land)
    	airport.bring_er_in(plane)
    end

    it 'takes up one storage space when it lands' do
    	airport.bring_er_in(plane)
    	expect(airport.plane_count).to eq 1
    end
    
    it 'a plane can take off' do
    	expect(plane).to receive(:take_off)
    	airport.banish_plane(plane)
    end

    it 'stops being in the airport when it does' do
    	airport.bring_er_in(plane)
    	airport.banish_plane(plane)
    	expect(airport.plane_count).to eq 0
    end
  end
  
  context 'traffic control' do
    it 'a plane cannot land if the airport is full' do
    	10.times { airport.bring_er_in(Plane.new) }
    	expect(plane).not_to receive(:land)
    	airport.bring_er_in(plane)
    end
    
    
  end
end