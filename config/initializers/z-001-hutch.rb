# load all activejob class
puts "hutch.yaml: #{Hutch::Config.load_from_file(Rails.root.join('config', 'hutch.yaml'))}"
Hutch::Config.error_handlers = [Hutch::ErrorHandlers::MaxRetry.new]
Hutch::Config.log_level = Logger::WARN
Hutch::Schedule.connect
