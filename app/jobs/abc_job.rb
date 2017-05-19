class AbcJob
	include Hutch::Consumer
	include Hutch::Enqueue
	
	consume 'bbc_job', 'abc_job'
	attempts 3

	def process(m)
		raise "Error #{m.properties.to_json}"
	end
end