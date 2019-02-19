require_relative './shared_expectations/commercially_aware_engineer_expectations'

JobSpec::Role.definition 'Principal Technical Consultant' do
  description <<~DESCRIPTION
    Our Principal Technical Consultants define and drive strategy to deliver digital and technology outcomes for our customers. Working with senior customer stakeholders our consultants drive digital transformation.

    ## What does the job entail?

    Our Principal Technical Consultants advise C-level stakeholders on a variety of IT matters in order to challenge and support digital change. Whether it's strategy, governance, effectiveness or pathing the way for transformation our consultants are trusted advisors.

    In order to drive digital transformation our Principal Technical Consultants assess value chains and digital capability before providing routes forward. We often advise on cloud strategy, IT change management and the adoption of agile delivery.

    Client Principals will often pull Principal Technical Consultants into early conversations with potential customers to be the technical authority in such dialog.

    When it makes sense, our Principal Technical Consultants help define high level roadmaps that can then be turned into deliverable programmes of work by a Made Tech delivery team. They will remain available throughout the delivery in an advisory role to the team.

    ## What experience are we looking for?

    We expect you to have experience managing a wide range of customer stakeholders in consultative engagements. You will be able to run meetings and workshops with stakeholders including C-level execs, IT Leadership and other business stakeholders.

    We expect you to have experience in delivering digital and technology outcomes, both in build and buy scenarios, and able to coordinate customer stakeholders, delivery teams and third party suppliers where appropriate.

    We expect you to have experience in delivering digital transformation. You need to be able to assess digital capability and drive organisational change.

    We expect you to have experience with enterprise architecture, both understanding existing landscapes and designing new ones. You need to be able to run workshops both with customers and our own software delivery teams. We expect you to have significant experience in designing and developing web applications in modern cloud-based environments.

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

  expected 'to be an advisor to technical C-level stakeholders',
    'We expect our Principal Technical Consultants to be able to advise CIO/CDO/CTOs in larger organisations and often CEOs in smaller organisations. Principal Technical Consultants will advise on IT strategy, governance, effectiveness and transformation.'

  expected 'to map and improve value chains',
    'We expect our Principal Technical Consultants to be able to map value chains within our customers organisations and to be able to provide options to customers in terms of how to improve the efficiency and effectiveness of their value chain.'

  expected 'to deliver digital transformation',
    'We expect our Principal Technical Consultants to be able to assess digital capability, define cloud strategy, guide IT change management and drive the adoption of Agile Delivery.'

  expected 'to provide technical assistance to our sales process',
    'We expect our Principal Technical Consultants to work with our Client Principals and be a technical authority in early conversations with potential customers. Principal Technical Consultants are expected to attend meetings, help draft proposals and answer technical questions.'

  expected 'to coordinate technical discovery projects',
    'We expect our Principal Technical Consultants to run technical discoveries. Principal Technical Consultants are responsible for planning, workshopping, engaging engineers to conduct technical feasibility studies, and ultimately recommending strategies to customers.'

  expected 'to define technical roadmaps',
    'We expect our Principal Technical Consultants to define digital and technology roadmaps. Principal Technical Consultants should work closely with customer stakeholders to ensure recommendations meet their organisational needs.'

  expected 'to advise on high level enterprise architecture',
    'We expect our Principal Technical Consultants to be able to map existing and design new enterprise architectures.'

  expected 'to coordinate customers, our software delivery teams and suppliers',
    'We expect our Principal Technical Consultants to coordinate the delivery of digital and technology outcomes by managing stakeholders themselves or providing an assistive role for our customers.'

  expected 'to run inception workshops with delivery teams',
    'We expect our Principal Technical Consultants to boot up delivery teams with an inception workshop. Principal Technical Consultants work with teams to turn high level roadmaps into deliverable pieces of work. Principal Technical Consultants must always do this in a way that empowers delivery teams to be able to make their own decisions while fitting into a larger organisational plan.'

  expected 'to be responsible for digital and technology outcomes',
    'We expect our Principal Technical Consultants to continue to remain engaged as a technical stakeholder throughout a customer engagement. Principal Technical Consultants will attend regular account catch ups.'

  include CommerciallyAwareEngineerExpectations, as: 'Commercially Aware Expectations'
end
