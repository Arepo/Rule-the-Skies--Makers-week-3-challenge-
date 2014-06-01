class Airport

	def planes
		@planes ||= []
	end

	def plane_count
		@planes.length
	end

	def bring_er_in(plane)
		planes << plane.land
	end

	def boot_plane(plane)
		planes.delete(plane.take_off)
	end

end