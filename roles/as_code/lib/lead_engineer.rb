require_relative './shared_expectations/core_engineer_expectations'

JobSpec::Role.definition 'Lead Engineer' do
  description 'Our Lead Engineers take responsibility for the successful delivery of software products and services. Experts in both software craftsmanship and agile delivery methods, Lead Engineers nurture engineering teams and are trusted partners to our customers.'

  expected 'act as a role model and servant leader to the team',
    'We expect our Lead Engineers to lead by example, to put the needs of others before their own, and to set and demonstrate a high standard for code and delivery quality. A Lead Engineer is expected to show themselves to be highly reliable, to be on time, to be well prepared, and to take ultimate account for ensuring commitments the team has made are kept.'

  expected 'coach and nurture team members to improve their engineering and delivery capability',
    'We expect our Lead Engineers to proactively provide thoughtful and meaningful feedback for their team. A Lead Engineer is expected to spend time helping team members to improve their skills. A Lead Engineer is expected to identify and nurture candidates for Lead and Senior Engineer positions. A Lead Engineer is expected to identify and escalate performance issues to a Director.'

  expected 'make sensible and well justified technical architecture decisions, involving the team in the decision making process where appropriate',
    'We expect our Lead Engineers to be able to design and implement appropriate technical architectures to solve problems. A Lead Engineer is expected to appropriately involve the team in the decision making process to help them develop their technical architecture skills.'

  expected 'lead workshop and roadmapping sessions to understand customer requirements and convert these in to deliverable iterations',
    'We expect our Lead Engineers to lead workshop and roadmapping sessions and foster collaboration with the wider team to identify a technology roadmap to solve business problems.'

  expected 'Quickly become a trusted partner to the customer team, building a friendly relationship',
    'We expect our Lead Engineers to quickly become a trusted partner to the customer team - both our day-to-day contacts, and more senior stakeholders. A Lead Engineer should be able to put a customer at ease by engaging in small talk, and by building strong and friendly working relationships. A Lead Engineer is expected to be able to credibly represent Made Tech when conversing with senior stakeholders.'

  expected 'Proactively identify opportunities where we can widen the impact of our work with the customer organisation',
    'We expect our Lead Engineers to proactively seek opportunities where we can extend our remit with the customer organisation. A Lead Engineer is expected to understand the objectives of our stakeholders, and to sell Made Tech’s wider capabilities.'

  expected 'to make sensible, well reasoned commercial decisions',
    'We expect our Lead Engineers to proactively make good commercial decisions. A Lead Engineer is expected to identify and course correct potential delivery issues before they become impactful. A Lead Engineer is expected to proactively escalate larger delivery issues to the Delivery Manager or Delivery Director.'

  expected 'to have attained the Made Tech Core Engineering Competencies',
    'We expect our Lead Engineers to be an expert in their craft, practising and coaching others in the Made Tech Core Engineering Competencies.'

  expected 'be the primary point of contact for the customer',
    'We expect our Lead Engineers to naturally position themselves as the primary day to day point of contact for the customer. A Lead Engineer is expected to gain the trust of the customer such that they’re seen as the first port of call for all customer contacts.'

  expected 'ensure customer expectations are exceeded given the budget available',
    'We expect our Lead Engineers to understand the financial constraints, as well as the customer objectives for the delivery. A Lead Engineer is accountable for ensuring the customer’s expectations are exceeded for the available budget.'

  expected 'ultimately accountable for the successful delivery of customer engagements',
    'We expect our Lead Engineers to assume ultimate responsibility for the successful delivery of customer engagements that they lead. The performance of the team and the delivery as a whole is viewed as the Lead Engineer’s responsibility.'

  expected 'provide accurate and honest reporting of Delivery Healthcheck to Directors',
    'We expect our Lead Engineers to proactively provide regular reporting to the Directors on the health of their delivery.'

  expected 'ensure that at all times the team is delivering according to the Made Tech Delivery Standards',
    'We expect our Lead Engineers to be the bastion of the Made Tech Delivery Standards, ensuring the team understands and is proactively practising them. A Lead Engineer is expected to encourage conversation on both more widely evolving the Delivery Standards, and ahead of deciding to follow a different path on their delivery.'

  expected 'ensure at all times that the customer would recommend Made Tech to their peers',
    'We expect our Lead Engineers to take accountability for ensuring the customer is delighted with the quality of our delivery to the level that they would not hesitate to recommend Made Tech to their peers.'

  expected 'protect the team from influences that may impact their ability to deliver',
    'We expect our Lead Engineers to demonstrate strong diplomacy when protecting their team from influences that may impact the team’s ability to deliver its objectives and commitments.'

  expected 'ensure sure the team collaborates, communicates and focuses on what is most important',
    'We expect our Lead Engineers to ensure the team is actively collaborating and communicating, both between team members and with the customer. A Lead Engineer is expected to ensure the team have a shared understanding of what is most important to the customer.'

  expected 'coach team members and customers, facilitate continuous improvement and apply the most appropriate agile and lean tools and techniques for their environment',
    'We expect our Lead Engineers to be an expert in the application of agile and lean practices. A Lead Engineer is expected to understand the most appropriate methods to apply given the situation. A Lead Engineer is expected to coach team members and customers on the application of lean and agile practices.'

  include CoreEngineerExpectations, as: 'Core Engineer Expectations'
end
