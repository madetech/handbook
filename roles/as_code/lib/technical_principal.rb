require_relative './shared_expectations/core_engineer_expectations'
require_relative './shared_expectations/senior_engineer_expectations'
require_relative './shared_expectations/commercially_aware_engineer_expectations'

JobSpec::Role.definition 'Technical Principal' do
  description <<~DESCRIPTION
    Our Technical Principals are consulting engineers who are commercially responsible for growing Made Tech by marrying deep technical expertise with a highly commercial perspective. Technical Principals provide senior support to delivery teams and help win new business.

    ## What does the job entail?

    Technical Principals are our most senior technical advisors for our customers. Working closely with senior IT and business leaders, Technical Principals help shape digital and technology roadmaps as well as make wider IT organisational change.

    Technical Principals sit across multiple delivery teams ensuring software engineering excellence and engaging in technical discovery work.

    Through coaching and mentoring Technical Pricipals will make sure Leads and Seniors are equipped with the skills needed to be successful in delivery. They will be helping grow our team into successful technical leaders and be responsible for helping others become Technical Pricipals.

    As an escalation point for software engineering issues, Technical Principals will be on hand when necessary, and to involve the wider engineering team if necessary.

    Helping in technical discovery work, Technical Principals will be able to engage in stakeholder workshops, technical feasibility studies, high level roadmapping, and ultimately shape up next steps for a Made Tech delivery team to be engaged.

    Technical Principals are expected to be seen as thought leaders in software engineering, to talk about our work in public, to remain technically current and push engineering at Made Tech forward.

    ## What does software delivery look like at Made Tech?

    We primarily write and deliver custom software to our customers. Before a project kicks off we will have a number of sessions where we begin to understand the customer’s business and what they are looking to achieve. We then formulate a roadmap for them, potentially a business case too, before starting delivery.

    We build solutions in a variety of languages and platforms, historically Ruby on Rails, we tend to use React, JavaScript, Elixir, and Clojure these days. We will usually be responsible for setting up a customer’s infrastructure on AWS with tools like Ansible and Terraform though sometimes we opt for a Platform as a Service like Heroku. We make sure there is a Continuous Delivery pipeline running our automated test suites before deploying changes.

    The software we build solves business problems. We’ve built software for karaoke, e-commerce, retail buying departments, accountants, photography studios, warehouses, supply chain companies, and ourselves. Typical projects will last 3-6 months, some customers work with us over longer periods but we like to mix up teams at around 6 months to keep things fresh.

    ## What experience are we looking for?

    We’ll expect you to be a polyglot programmer versed in a mix of object and functional programming languages. We’d expect you to have some blog posts about your discipline, perhaps even a talk or two. Not only this but the right person would be adept in sharing their knowledge with others – we’d love to hear some examples of coaching and growing team members.

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

  expected 'to act as a role model and servant leader to their teams',
    'We expect our Technical Principals to lead by example, to put the needs of others before their own, and to set and demonstrate a high standard for code and delivery quality. A Technical Principal is expected to show themselves to be highly reliable, to be on time, and to be well prepared.'

  expected 'to coach and nurture Lead and Senior Engineers',
    'We expect our Technical Principals to proactively provide thoughtful and meaningful feedback for their team. A Technical Principal is expected to spend time helping team members to improve their skills. A Technical Principal is expected to identify and nurture candidates for Technical Principal positions. A Technical Principal is expected to identify and escalate performance issues to a relevant Line Manager.'

  expected 'to be a point of escalation for software engineering issues',
    'We expect our Technical Principals to be a point of escalation when a delivery team are struggling with software engineering issues. Technical Principals will look to quickly remedy issues and pull in the wider engineering team if necessary.'

  expected 'to coach and support teams running workshops and roadmapping sessions',
    'We expect our Technical Principals to coach teams to be able to run workshops and roadmapping sessions, to provide a supporting role in important sessions, and foster collaboration with the wider team to identify a technology roadmap to solve business problems.'

  expected 'to run technical discovery projects',
    'We expect our Technical Principals to run technical discoveries. Technical Principals are responsible for planning, workshopping, running technical feasibility studies, and ultimately recommending strategies to customers.'

  expected 'to be partner with customer technical and business leadership to help shape their technology strategies',
    'We expect our Technical Pricipals to be able to engage the highest levels of technical leadership within our customers organisations. Through building strong relationships Technical Principals will be seen as trusted advisors.'

  include CommerciallyAwareEngineerExpectations, as: 'Commercially Aware Expectations'
end
