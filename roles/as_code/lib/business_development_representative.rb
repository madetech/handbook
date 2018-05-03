require_relative './shared_expectations/outbound_sales_expectations'
require_relative './shared_expectations/inbound_sales_expectations'

JobSpec::Role.definition 'Business Development Representative' do
  description <<~DESCRIPTION
    Our Business Development Reps are at the forefront of building relationships with markets, organisations and key stakeholders. Ability to execute and evolve a plan is key.

    ## What does the job entail?

    We are looking to expand our sales efforts by building out our Business Development capability. You will help us engage with more organisations and stakeholders with creative outbound campaigns as well as responding to inbound activity.

    You wll be responsible for running specific sales plays we have already defined that include email, phone calls, workshops and other events to grow relationships and help markets understand the agility and software delivery excellence we can provide their organisations.

    Working closely with our Sales & Marketing team as well as Company Directors you will have a high degree of autonomy backed by the support of an engaged senior team.

    This is a brilliant opportunity to have a wide remit and big influence on how we shape our sales activities. We expect the right candidate will grow with us and there will be plenty of opportunities to take on new responsibilities and help build out a first-class sales team.

    ## What experience are we looking for?

    We are looking for an energetic, enthused individual who likes striking up new relationships and able to nuture those relationships over time. We are looking for someone who is able to execute a plan but also opinionated enough to help evolve those plans too.

    Particularly important is the ability to research subjects, whether that is new software trends or organisational structures

    What’s required:

     - Strong written & verbal communication skills
     - Experience dealing with customers face to face, on the telephone and by email
     - Commercial awareness
     - A motivated and proactive approach to work
     - Professional telephone manner and corporate approach to sales is essential
     - Excellent time management
     - Able to execute against a plan and evolve it over time
     - Able to research a subject and speak on it with a good level of understanding
     - Good project management and organisational skills
     - Understanding of customer segmentation
     - Able and willing to learn things quickly
     - Capable of prioritising your busy workload to ensure that all targets are achieved through managing your team effectively to deliver results
     - Thrive on ownership and accountability – and have a proven track record of acting on your own initiative to deliver change
     - Excellent IT skills with a knowledge of Microsoft Word, Excel and the ability to learn and develop the functionality of a new system

    Everything else is optional but highly sought after. We would love you to have experience in:

     - 2+ years commercial experience in a sales / business development role
     - Experience of the software delivery world

    ## What is it like to work at Made Tech?

    We are a technology focussed business that values continuous improvement, experimentation, trusting individuals and teams to do the right thing.

    We are a growing business and now is a good time to join us as there is great opportunity to have a massive impact on the business and grow with us too.

    ## Salary

    This role has a salary of £25-35k basic with OTE depending on experience.
  DESCRIPTION

  salary 25_000..35_000

  expected 'to be pitching Made Tech services and case studies clearly',
    'We expect our Business Development Reps to confidently pitch our services to potential customers through email, telephone and face-to-face communication. They should be able to identify customer pain points and talk about relevant case studies in which we\'ve solved similar problems.'

  expected 'to be able to have a credible conversation about software delivery with a potential customers',
    'We expect our Business Development Reps to credibly talk about software deliver practices at a high level. They should have a good understanding of the software development lifecycle and the types of problems customers face and have a good grasp of industry terminology.'

  expected 'to be applying pareto sales training in dialogs with prospects',
    'We expect our Business Development Reps to be continuously improving their sales skills and applying the most relevant techniques, to deliver desired results. '

  expected 'to be maintaining accurate data within our CRM system (forecasting, customer records etc)',
  'We expect our Business Development Reps to keep the CRM system accurate and up-to-date with all customer communication tracked within it.'

  expected 'to embody our company values and provide excellent service and clear honest communication to prospective customers',
  'We expect our Business Development Reps to positively represent the company in all communications. We expect them to be positive, helpful and professional and become trusted advisors to customers. '

  include OutboundSalesExpectations, as: 'Outbound Business Development Expectations'
  include InboundSalesExpectations, as: 'Inbound Business Development Expectations'
end
