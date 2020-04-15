# README

Changed files:
1. `config/application.rb`: use Hutch Adapter
1. `config/initializers/z-001-hutch.rb`: to initlize Hutch and Hutch::Schedule
1. `app/jobs/plan_job.rb`: to test job with ActiveJob error retry.
1. `app/jobs/bow_job.rb`: to test ActiveJob use hutch to driver it. 
1. `app/consumers/aac_consumer.rb`: have threshold and consume two routing keys
1. `app/consume/bbc_consumer.rb`: normal hutch consumer
1. 'config/hutch.yaml': Hutch Config file

# Use
1. `docker-compose up`: launch rabbitmq
2. `hutch -v` to run hutch process.
3. `rails c` to enqueue message with:
  - `BowJob.set(wait: 5.seconds).perform_later(a: 1)`
  - `PlanJob.perform_later(b: 2)` will retry 5 times with exponentially_longer delay algorithm.


# explain
1. `AbcConsumer`, `BbcConsumer` two Hutch::Consumer, direct use for raw message handleing. [`app/consumers`]
2. `BowJob`, `PlanJob` two ActiveJob::Base, use ActiveJob deal with background job. [`app/jobs`]
