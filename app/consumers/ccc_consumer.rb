class CccConsumer
  include Hutch::Consumer
  include Hutch::Enqueue
  
  consume 'consumer.ccc'
  attempts 2
  threshold -> { { rate: 3 } }
  
  def process(msg)
    logger.info "#{Thread.current.name} - ccc"
  end
end