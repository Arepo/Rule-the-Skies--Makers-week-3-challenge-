class Plane

	include Weather

	def initialize
		@status = "flying"
	end

	def status
		@status
	end

	def land
		@status = "landed" unless stormy?
		self unless @status == "flying"
	end

	def take_off
		@status = "flying" unless stormy?
		self unless @status == "landed"
	end

end