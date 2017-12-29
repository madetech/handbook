require_relative './shared_expectations/core_engineer_expectations'

JobSpec::Role.definition 'Academy Engineer' do
  description 'Our software delivery teams are the core of our business. They are usually comprised of a Lead Engineer, a Delivery Manager and one or more Engineers. As an Academy Engineer we expect someone:'

  expected 'to be actively working towards becoming an Engineer',
    'The Academy Engineer role is a temporary one. Our aim is for most Academy Engineers to move into an Engineer role after completing the 12 week academy programme or latest within 12 months. We will actively work with Academy Engineers to develop career development plans so it is clear on the steps needing to be taken in order to become an Engineer.'

  expected 'to be in the office',
    'We expect our Academy Engineers to be working from our office so that they can easily receive help from their colleagues. We have found that being physically present means it\'s much easier to ask colleagues for a quick bit of help. Not only that but it\'s important to build strong relationships with your colleagues and there is nothing like being in the office for doing that. All our other roles are remote friendly and we expect once you have been promoted to Engineer then you will have access to this benefit too.'

  expected 'to be involved in improving the academy program for current and future cohorts',
    'We expect Academy Engineers to have lots of opinions and feedback on our academy as they will have experienced it first hand. We expect this insight to be put to good use to improve our academy for current and future cohorts.'

  include CoreEngineerExpectations, as: 'Core Engineer Expectations'
end
