class Plane

	include Weather

	def initialize
		@flying = true
	end

	def flying?
		@flying
	end

	def land
		@flying = false unless stormy?
		self
	end

	def take_off
		@flying = true unless stormy?
		self unless @flying == false
	end

end