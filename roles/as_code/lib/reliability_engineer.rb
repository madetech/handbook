require_relative './shared_expectations/core_engineer_expectations'

JobSpec::Role.definition 'Reliability Engineer' do
  description 'Our software delivery teams are the core of our business. They are usually comprised of a Lead Engineer, a Delivery Manager and one or more Engineers. As an Engineer we expect someone:'

  expected 'to autonomously deliver working software',
    'We expect our Reliability Engineers to be able to work on entire features, from conception through to production deployment, without guidance and direction from others. This doesn\'t mean they have to be delivered without pairing, or asking advice from the wider team. What it does mean is the primary force for ensuring the feature is built and deployed in a timely fashion is the responsiblity of the Reliability Engineer working on the problem.'

  expected 'to be fully billable by timesheeting 7 hours daily',
    'We expect our Reliability Engineers to ensure they are timesheeting 7 hours daily into harvest. As our current offering means we offer hours to our customers we need to make sure we are working through these hours and providing value to our customers.'

  expected 'to regularly communicate with customers without reminder',
    'We expect our Reliability Engineers to keep their fellow team members up to date with their progress. A good litmus test for this is everyone on the team can describe what their team mates are up to.'

  expected 'to be a responsible remote worker',
    'We expect our Reliability Engineers to communicate more than anyone else in the business if they choose to work fully remote. Remote working requires extra attention to be paid to communication channels like email and slack.'

  expected 'to effectively juggle commitments',
    'We expect our Reliability Engineers to be able to balance the priority of their work. Having an understanding of the severity of work along with expected time to fix is important and it should be used to help prioritise what to work on. Customers expectations need to be set, met and if they cannot be met, be reset early and often.'

  expected 'to provide an outstanding customer service',
    'We expect our Reliability Engineers to be a delightly person to talk to for our customers. Our conversations should be professional and friendly, we should small talk where possible, use a smiley face once in a while and generally be nice folk.'

  expected 'to proactively identify technical improvements and recommend them to customers',
    'We expect our Reliability Engineers to be able to spot areas for improvement in customer codebases such as test suites, dependency upgrades, performance issues detected by monitoring. We also expect them to be able to highlight these issues in a jargon free way and be able to convey the relative urgency of the issues ultimately leading to our customer codebases being improved.'

  include CoreEngineerExpectations, as: 'Core Engineer Expectations'
end
