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

	def bring_er_in(plane)
		hangar << plane.land unless plane_count >= @capacity
	end

	def banish_plane(plane)
		hangar.delete(plane.take_off) #unless stormy?
	end

end