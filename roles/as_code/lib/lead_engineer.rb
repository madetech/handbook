require_relative './shared_expectations/core_engineer_expectations'
require_relative './shared_expectations/delivery_lead_expectations'

JobSpec::Role.definition 'Lead Engineer' do
  description <<~DESCRIPTION
    Our Lead Engineers turn our customer’s needs into roadmaps, coach teams to deliver, are cutting the best code of their career, still learn every day, and constantly strive to be nice humans.

    ## What does the job entail?

    We primarily write and deliver custom software to our customers. Before a project kicks off we will have a number of sessions where we begin to understand the customer’s business and what they are looking to achieve. We then formulate a roadmap for them, potentially a business case too, before starting delivery.

    We build solutions in a variety of languages and platforms, historically Ruby on Rails, we tend to use React, JavaScript, Elixir, and Clojure these days. We will usually be responsible for setting up a customer’s infrastructure on AWS with tools like Ansible and Terraform though sometimes we opt for a Platform as a Service like Heroku. We make sure there is a Continuous Delivery pipeline running our automated test suites before deploying changes.

    The software we build solves business problems. We’ve built software for karaoke, e-commerce, retail buying departments, accountants, photography studios, warehouses, supply chain companies, and ourselves. Typical projects will last 3-6 months, some customers work with us over longer periods but we like to mix up teams at around 6 months to keep things fresh.

    ## What experience are we looking for?

    We’ll expect you to be a polyglot programmer versed in a mix of object and functional programming languages. We’d expect you to have some blog posts about your discipline, perhaps even a talk or two. Not only this but the right person would be adept in sharing their knowledge with others – we’d love to hear some examples of coaching and growing team members.

    Every engineer at Made Tech is taught commercial responsibility and ownership over their software but it is expected to be second nature for this role.

    Further required experience:

    - Working directly with customers
    - Writing code with Test Driven Development
    - Pair programming as we pair around 50% of the time
    - Agile practices such as Scrum, XP, and/or Kanban
    - Working with a range of SQL and NoSQL databases
    - Infrastructure as code tools such as Ansible, Chef, Puppet, and/or Saltstack
    - Debugging a range of applications
    - Experience debugging infrastructure (AWS/Heroku/Linux/HTTP)

    Everything else is optional but highly sought after. We would love you to have experience in:

    - Writing code with Acceptance Test Driven Development
    - Component based design techniques such as using pattern libraries, styled components, CSS-in-JS, BEM, and/or SUIT CSS
    - The React ecosystem including a TDD approach

    ## What is it like to work at Made Tech?

    We are a sanctuary for those wanting to hone their skills alongside like-minded learners. After joining our team it is common for new starters to comment on how much they’re learning and how much they enjoy the fact they are surrounded by people they can learn from. This includes our most senior hires.

    The biggest thing you’ll take away from our culture after spending the day with us would be that we practice continuous improvement at every level. Everyone has peer-based one-to-ones every 2 weeks, along with monthly one-to-ones with a director. Teams have fortnightly retrospectives. We also hold a company wide retrospective fortnightly. We discuss our problems out in the open, and rather than punish failure we band together to find solutions.

    Other notable things:

    - Every Friday afternoon is dedicated to learning new skills
    - Everyone is encouraged to write blog posts regularly
    - Our handbook is open sourced
    - We are vegan and non-drinker friendly as well as meat-eater and drinker friendly
    - Retreats and trips every year

    ## Salary

    This role has a salary of £50-85k depending on experience.
  DESCRIPTION

  salary 50_000..85_000

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
