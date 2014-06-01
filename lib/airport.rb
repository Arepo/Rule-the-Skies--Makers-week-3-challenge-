require_relative 'weather'


class Airport

	include Weather

	def initialize(capacity: 10)
		@capacity = capacity
	end

	def hangar
		@planes ||= []
	end

	def plane_count
		hangar.count
	end

	def full?
		plane_count >= @capacity 
	end

	def bring_er_in(plane)
		(hangar << plane.land).compact! unless full?
	end

	def banish_plane(plane)
		hangar.delete(plane.take_off)	
	end

end