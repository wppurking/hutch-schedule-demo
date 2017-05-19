class BowJob < ApplicationJob
  queue_as :bow

  def perform(*args)
  	#puts "Bow: #{args}"
  end
end
