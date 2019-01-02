class DeliveryManagerExpectations < JobSpec::Role::Expectations
  expected 'plan and lookahead',
    'We expect our Delivery Managers to ensure epics are ready for teams to begin work on with no known blockers. We expect Delivery Managers to work with customers and the team to transform the customer\'s high level business objectives in to a roadmap with at least 3 months runway.'

  expected 'nurture highly performing teams',
    'We expect our Delivery Managers to nurture a culture of high performance in their teams. Where customers do not provide adequate pressure to deliver, we expect our Delivery Managers to constructively challenge our teams. It is important that we\'re doing the right thing for our customers: delivering valuable, working software as expediently as we\'re able.'

  expected 'manage risks and budgets',
    'We expect our Delivery Managers to proactively manage and mitigate risks to our deliveries and customer relationships. We expect our Delivery Managers to ensure the customer is delighted with what we deliver for their budget.'

  expected 'define, capture and share necessary reporting materials',
    'We expect our Delivery Managers to work with customers and Account Leads to the define the frequency and type of reporting that will be most valuable to them.'

  expected 'facilitate dialogue with Account Lead',
    'We expect our Delivery Managers to facilitate a regular dialogue with their Account Lead to ensure both parties are abreast of relevant account and delivery activity.'

  expected 'ensure teams and individuals take responsibility for delivery quality',
    'We expect our Delivery Managers to ensure teams are delivering with acceptable levels of quality. We expect Delivery Managers to encourage their team to identify and proactively \'pull\' from others when they need testing support. We expect Delivery Managers to *not* provide a safety net to their team by automatically testing features.'
end