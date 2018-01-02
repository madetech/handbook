require_relative './shared_expectations/core_engineer_expectations'
require_relative './shared_expectations/delivery_lead_expectations'

JobSpec::Role.definition 'Lead Engineer' do
  description 'Our Lead Engineers take responsibility for the successful delivery of software products and services. Experts in both software craftsmanship and agile delivery methods, Lead Engineers nurture engineering teams and are trusted partners to our customers.'

  expected 'act as a role model and servant leader to the team',
    'We expect our Lead Engineers to lead by example, to put the needs of others before their own, and to set and demonstrate a high standard for code and delivery quality. A Lead Engineer is expected to show themselves to be highly reliable, to be on time, to be well prepared, and to take ultimate account for ensuring commitments the team has made are kept.'

  expected 'coach and nurture team members to improve their engineering and delivery capability',
    'We expect our Lead Engineers to proactively provide thoughtful and meaningful feedback for their team. A Lead Engineer is expected to spend time helping team members to improve their skills. A Lead Engineer is expected to identify and nurture candidates for Lead and Senior Engineer positions. A Lead Engineer is expected to identify and escalate performance issues to a Director.'

  expected 'make sensible and well justified technical architecture decisions, involving the team in the decision making process where appropriate',
    'We expect our Lead Engineers to be able to design and implement appropriate technical architectures to solve problems. A Lead Engineer is expected to appropriately involve the team in the decision making process to help them develop their technical architecture skills.'

  expected 'lead workshop and roadmapping sessions to understand customer requirements and convert these in to deliverable iterations',
    'We expect our Lead Engineers to lead workshop and roadmapping sessions, and foster collaboration with the wider team to identify a technology roadmap to solve business problems.'

  expected 'Quickly become a trusted partner to the customer team, building a friendly relationship',
    'We expect our Lead Engineers to quickly become a trusted partner to the customer team - both our day-to-day contacts, and more senior stakeholders. A Lead Engineer should be able to put a customer at ease by engaging in small talk, and by building strong and friendly working relationships. A Lead Engineer is expected to credibly and knowledgeably represent Made Tech when conversing with senior stakeholders.'

  expected 'Proactively identify opportunities where we can widen the impact of our work with the customer organisation',
    'We expect our Lead Engineers to proactively seek opportunities where we can extend our remit with the customer organisation. A Lead Engineer is expected to understand the objectives of our stakeholders, and to sell Made Tech’s wider capabilities.'

  expected 'to make sensible, well reasoned commercial decisions',
    'We expect our Lead Engineers to proactively make good commercial decisions. A Lead Engineer is expected to identify and course correct potential delivery issues before they become impactful. A Lead Engineer is expected to proactively escalate larger delivery issues to the Delivery Manager or Delivery Director.'

  expected 'to have attained the Made Tech Core Engineering Competencies',
    'We expect our Lead Engineers to be an expert in their craft, practising and coaching others in the Made Tech Core Engineering Competencies.'

  include DeliveryLeadExpectations, as: 'Delivery Lead Expectations'
  include CoreEngineerExpectations, as: 'Core Engineer Expectations'
end
