class BbcConsumer
  include Hutch::Consumer
  include Hutch::Enqueue
  
  consume 'consumer.bbc'
  attempts 2
  
  def process(msg)
    logger.info "#{Thread.current.name} - bbc"
  end
end