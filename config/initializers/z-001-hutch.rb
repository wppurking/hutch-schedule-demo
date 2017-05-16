Hutch::Config.load_from_file(Rails.root.join('config', 'config.yaml'))

# used for hutch command
Hutch::Config.setup_procs  << Proc.new {
	Hutch::Schedule.connect(Hutch.broker)
}
Hutch.connect
# init with rails to enqueue scheulde message
Hutch::Schedule.connect(Hutch.broker) if Hutch::Schedule.core.blank?