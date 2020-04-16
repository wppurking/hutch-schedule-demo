class AacConsumer
  include Hutch::Consumer
  include Hutch::Enqueue
  
  consume 'consumer.bbc', 'consumer.aac'
  attempts 3
  
  def process(msg)
    puts "#{Thread.current.name} - aac #{msg}" unless msg.body.blank?
  end
end
