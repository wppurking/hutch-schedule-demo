Hutch::Config.load_from_file(Rails.root.join('config', 'config.yaml'))
Hutch::Config.setup_procs  << -> {
	Hutch::Schedule.connect(Hutch.broker)
}
Hutch.connect