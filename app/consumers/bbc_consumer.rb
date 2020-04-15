class BbcConsumer
	include Hutch::Consumer
	include Hutch::Enqueue

	consume 'consumer.bbc'
	attempts 2

	def process(m)
		puts 'bbc'
		#raise "BBC ERROR"
	end
end