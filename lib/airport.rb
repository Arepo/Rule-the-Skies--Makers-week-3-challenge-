class Airport

	def initialize(capacity: 10)
		@capacity = capacity
	end

	def planes
		@planes ||= []
	end

	def plane_count
		planes.count
	end

	def bring_er_in(plane)
		planes << plane.land unless plane_count >= @capacity
	end

	def boot_plane(plane)
		planes.delete(plane.take_off)
	end

end