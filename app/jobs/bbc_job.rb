class BbcJob
	include Hutch::Consumer
	include Hutch::Enqueue

	consume 'bbc_job'
	attempts 2

	def process(m)
		raise "BBC ERROR"
	end
end