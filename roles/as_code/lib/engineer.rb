require_relative './shared_expectations/core_engineer_expectations'

JobSpec::Role.definition 'Engineer' do
  description <<~DESCRIPTION
    Our Engineers build software that makes our customers happy, they prefer problem solving over task completing, love learning from colleagues, and constantly strive to be nice humans.

    ## What does the job entail?

    We primarily write and deliver custom software to our customers. We build solutions in a variety of languages and platforms, historically Ruby on Rails, we tend to use React, JavaScript, Elixir, and Clojure these days. We will usually be responsible for setting up a customer’s infrastructure on AWS with tools like Ansible and Terraform though sometimes we opt for a Platform as a Service like Heroku. We make sure there is a Continuous Delivery pipeline running our automated test suites before deploying changes.

    The software we build solves business problems. We’ve built software for karaoke, e-commerce, retail buying departments, accountants, photography studios, warehouses, supply chain companies, and ourselves. Typical projects will last 3-6 months, some customers work with us over longer periods but we like to mix up teams at around 6 months to keep things fresh.

    ## What experience are we looking for?

    We’ll expect you to be proficient in at least two programming languages. This is usually something like Ruby/Python/PHP/Java/C# and then JavaScript. Everyone in the organisation comes from various language backgrounds and we see this as a strength of our offering, our teams can solve problems with open minds and across many platforms. This also makes for a great learning environment.

    Code is only the half of it. The other half is communication. We expect you to be a great communicator with customers and colleagues in written and spoken English. We meet our customers face to face regularly, even working from their office, along with keeping in touch via Slack and Google Hangouts.

    Everything else is optional but highly sought after. We would love you to have experience in:

    - Previous experience working directly with customers
    - Writing code with Test Driven Development or perhaps ATDD
    - Mentoring colleagues providing them with guidance rather than solutions
    - Pair programming as we pair around 50% of the time
    - Agile practices like Scrum, XP, and/or Kanban
    - Component based design techniques such as using pattern libraries, styled components, CSS-in-JS, BEM, and/or SUIT CSS
    - React ecosystem including a TDD approach
    - Working with a range of SQL and NoSQL databases
    - Infrastructure as code tools like Ansible, Chef, Puppet, and/or Saltstack
    - Strong delivery skills: a huge drive to get something shipped

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

    This role has a salary of £30-50k depending on experience.
  DESCRIPTION

  salary 30_000..50_000

  expected 'to autonomously deliver working software',
    'We expect our Engineers to be able to work on entire features, from conception through to production deployment, without guidance and direction from others. This doesn\'t mean they have to be delivered without pairing, or asking advice from the wider team. What it does mean is the primary force for ensuring the feature is built and deployed in a timely fashion is the responsibility of the Engineer working on the problem.'

  expected 'to be fully billable',
    'We expect our Engineers to be fully billed on customers deliveries as we are a business trying to make a profit by delivering valuable working software to our customers.'

  include CoreEngineerExpectations, as: 'Core Engineer Expectations'
end
