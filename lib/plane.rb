class Plane

	include Weather

	def initialize
		@flying = true
	end

	def flying?
		@flying
	end

	def land
		@flying = false
		self
	end

	def take_off
		@flying = true unless stormy?
		self
	end

end