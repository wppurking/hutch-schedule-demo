class PlanJob < ApplicationJob
  queue_as :plan

  retry_on StandardError, wait: :exponentially_longer

  def perform(user_id)
  	puts 'plan'
  	#raise StandardError.new("Throw exception, it will enqueue to schedule_queue with per-message-ttl")
  end
end
