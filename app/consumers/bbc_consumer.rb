class BbcConsumer
	include Hutch::Consumer
	include Hutch::Enqueue

	consume 'consumer.bbc'
	attempts 2

	def process(m)
		raise "BBC ERROR"
	end
end