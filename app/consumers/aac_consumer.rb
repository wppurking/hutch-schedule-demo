class AacConsumer
	include Hutch::Consumer
	include Hutch::Enqueue
	
	consume 'consumer.bbc', 'consumer.aac'
	attempts 3

	def process(m)
		raise "Error #{m.properties.to_json}"
	end
end