require 'grand_finale'

# grand finale
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
describe "The grand finale (last spec)" do
  
  context 'the mission, should they choose to accept it' do
  	
  	it 'requires them all to arrive at Babylon 5' do
  		
  		expect(the_mission_for(magnificent_six))
  	end
  end

end