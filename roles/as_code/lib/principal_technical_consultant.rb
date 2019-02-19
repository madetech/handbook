require_relative './shared_expectations/commercially_aware_engineer_expectations'

JobSpec::Role.definition 'Principal Technical Consultant' do
  description <<~DESCRIPTION
    Our Principal Technical Consultants define and drive strategy to deliver digital and technology outcomes for our customers. Working with senior customer stakeholders our consultants identify business needs, build business cases, and run discoveries to drive change in our customers organisations.

    ## What does the job entail?

    Principal Technical Consultants advise our customers on how best to meet their organisational needs. Whether the best route forward is to build or buy technology, our consultants take a holistic view and are focussed on outcomes.

    From mapping customer value chains, to understanding the existing technical landscape and coordinating technical discovery work our consultants are often the first technical people on the ground to identify how best Made Tech can help.

    Working alongside our Client Principals our Principal Technical Consultants provide the technical assistance in new business opportunities as well as continuing to revisit how best we can help existing customers.

    When it makes sense, our Principal Technical Consultants help define high level roadmaps that can then be turned into deliverable programmes of work by a Made Tech delivery team. They will remain available throughout the delivery in an advisory role to the team.

    ## What experience are we looking for?

    We expect you to have experience managing a wide range of customer stakeholders in consultative engagements. You will be able to run meetings and workshops with stakeholders including C-level execs, IT Leadership and other business stakeholders.

    We expect you to have experience in delivering digital and technology outcomes, both in build and buy scenarios, and able to coordinate customer stakeholders, delivery teams and third party suppliers where appropriate.

    We expect you to have experience architecting and leading software delivery teams, helping guide technical decision making in a servant leader approach. We expect you to have significant experience in designing and developing web applications in modern cloud-based environments.

    Business savvy is a must. You will need experience in translating business goals and issues into technical solutions and have success stories to share. You will need to demonstrate experience working with senior IT and business stakeholders to create technical strategies.

    ## What is it like to work at Made Tech?

    We are a sanctuary for those wanting to hone their skills alongside like-minded learners. After joining our team it is common for new starters to comment on how much they’re learning and how much they enjoy the fact they are surrounded by people they can learn from. This includes our most senior hires.

    The biggest thing you’ll take away from our culture after spending the day with us would be that we practice continuous improvement at every level. Everyone has peer-based one-to-ones every 2 weeks, along with monthly one-to-ones with a Line Manager. Teams have fortnightly retrospectives. We also hold a company wide retrospective fortnightly. We discuss our problems out in the open, and rather than punish failure we band together to find solutions.

    Other notable things:

    - Every Friday afternoon is dedicated to learning new skills
    - Everyone is encouraged to write blog posts regularly
    - Our handbook is open sourced
    - We are vegan and non-drinker friendly as well as meat-eater and drinker friendly
    - Retreats and trips every year

    ## Salary

    This role has a salary of £85-95k depending on experience.
  DESCRIPTION

  salary 85_000..95_000

  expected 'to partner with senior business and technical leaders within our customer organisations',
    'We expect our Principal Technical Consultants to be able to engage the highest levels of business and technical leadership within our customers organisations. Through building strong relationships should be seen as trusted advisors.'

  expected 'to work with Client Principals to provide technical assistance to our sales process',
    'We expect our Principal Technical Consultants to be a technical authority in early conversations with potential customers. Principal Technical Consultants are expected to attend meetings, help draft proposals and answer technical questions.'

  expected 'to help design efficient value chains',
    'We expect our Principal Technical Consultants to be able to map value chains within our customers organisations and to be able to provide options to customers whether it\'s build or buy.'

  expected 'to coordinate technical discovery projects',
    'We expect our Principal Technical Consultants to run technical discoveries. Principal Technical Consultants are responsible for planning, workshopping, engaging engineers to conduct technical feasibility studies, and ultimately recommending strategies to customers.'

  expected 'to run inception workshops with delivery teams',
    'We expect our Principal Technical Consultants to boot up delivery teams with an inception workshop. Principal Technical Consultants work with teams to turn high level roadmaps into deliverable pieces of work. Principal Technical Consultants must always do this in a way that empowers delivery teams to be able to make their own decisions while fitting into a larger organisational plan.'

  expected 'to be responsible for digital and technology outcomes',
    'We expect our Principal Technical Consultants to continue to monitor the success of their work and ensure successful outcomes for customers. Principal Technical Consultants will attend account reviews along with Client, Delivery and Tech Principals.'

  include CommerciallyAwareEngineerExpectations, as: 'Commercially Aware Expectations'
end
