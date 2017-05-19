# load all activejob class
puts Hutch::Config.load_from_file(Rails.root.join('config', 'config.yaml'))
Hutch::Config.error_handlers = [Hutch::ErrorHandlers::MaxRetry.new]
Hutch.connect
Hutch::Schedule.connect
