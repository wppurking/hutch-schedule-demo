class AacConsumer
  include Hutch::Consumer
  include Hutch::Enqueue
  
  consume 'consumer.bbc', 'consumer.aac'
  attempts 3
  threshold rate: 1, interval: 1
  
  def process(msg)
    logger.info "#{Thread.current.name} - aac"
  end
end
