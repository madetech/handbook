require_relative './shared_expectations/core_engineer_expectations'

JobSpec::Role.definition 'Engineer' do
  description 'Our software delivery teams are the core of our business. They are usually comprised of a Lead Engineer, a Delivery Manager, and one or more Engineers. As an Engineer we expect someone:'

  expected 'to autonomously deliver working software',
    'We expect our Engineers to be able to work on entire features, from conception through to production deployment, without guidance and direction from others. This doesn\'t mean they have to be delivered without pairing, or asking advice from the wider team. What it does mean is the primary force for ensuring the feature is built and deployed in a timely fashion is the responsibility of the Engineer working on the problem.'

  expected 'to be fully billable',
    'We expect our Engineers to be fully billed on customers deliveries as we are a business trying to make a profit by delivering valuable working software to our customers.'

  include CoreEngineerExpectations, as: 'Core Engineer Expectations'
end
