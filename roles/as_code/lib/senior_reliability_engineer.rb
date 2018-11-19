require_relative './shared_expectations/core_engineer_expectations'
require_relative './shared_expectations/senior_engineer_expectations'
require_relative './shared_expectations/reliability_engineer_expectations'

JobSpec::Role.definition 'Senior Reliability Engineer' do
  description <<~DESCRIPTION
    Our Senior Reliability Engineers are champions of the Made Tech reliability engineering culture and DevOps in it's truest and most collaborative form. Through coaching and mentoring our reliability engineering team as well as remaining hands-on, our Senior Reliability Engineers ensure the quality of applications through their lifetime.

    ## What does the job entail?

    We primarily write and deliver custom software to our customers. We build solutions in a variety of languages and platforms, historically Ruby on Rails, we tend to use React, JavaScript, Elixir, and Clojure these days. We will usually be responsible for setting up a customer’s infrastructure on AWS with tools like Ansible and Terraform though sometimes we opt for a Platform as a Service like Heroku. We make sure there is a Continuous Delivery pipeline running our automated test suites before deploying changes.

    Senior Reliability Engineers will split their time between responding to automated alerts ensuring the uptime of applications, proactive codebase improvements, coaching and mentoring delivery teams to build production-ready systems and championing reliability engineering culture more widely. Senior Reliability Engineers serve our delivery teams who ultimately serve our customers.

    Senior Reliability Engineers are also responsible for coaching and mentoring other members of the reliability engineering team as well as championing reliability engineering culture more widely.

    This role requires less of a physical presence with delivery teams and therefore it is our first fully remote engineering role. You are of course welcome to work from our offices rather than remote but the option is open. Being remote means regular communication and being visible is important.

    ## What experience are we looking for?

    We’ll expect you to be a polyglot programmer versed in a mix of object and functional programming languages. We expect you to be able to jump into a project in a language, framework or configuration you’ve not worked in before and be able to fix issues and improve the codebase. Not only this but the right person would be adept in sharing their knowledge with others – we’d love to hear some examples of coaching and growing team members.

    Multitasking, or more accurately, prioritisation is a big part of being a Reliability Engineer. We expect you to be able to prioritise your work, be able to switch onto resolving emergencies without being told to, and keep all delivery teams up to date.

    Code is only the half of it. The other half is communication. We expect you to be a great communicator with delivery teams in written and spoken English. Reliability Engineers keep in touch with delivery teams mostly via Slack and Google Hangouts.

    Further required experience:

    - Debugging a range of applications
    - Experience debugging infrastructure (AWS/Heroku/Linux/HTTP)
    - Writing code with Test Driven Development
    - Pair programming as we pair around 50% of the time
    - Agile practices such as Scrum, XP, and/or Kanban
    - Working with a range of SQL and NoSQL databases
    - Infrastructure as code tools such as Ansible, Chef, Puppet, and/or Saltstack

    Everything else is optional but highly sought after. We would love you to have experience in:

    - Working directly with customers
    - Writing code with Acceptance Test Driven Development
    - Component based design techniques such as using pattern libraries, styled components, CSS-in-JS, BEM, and/or SUIT CSS
    - The React ecosystem including a TDD approach

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

    This role has a salary of £60-75k depending on experience.
  DESCRIPTION

  salary 60_000..75_000

  expected 'to drive the reliability engineering agenda across Made Tech',
    'We expect the Senior Reliability Engineers to drive the reliability engineering agenda across the business. They should set the standard for what "good" looks like for applications from a maintainability, scalability, and security perspective, and ensure delivery teams understand are bought in to these standards.'

  expected 'to coach and nurture team members to improve their reliability engineering capability',
    'We expect our Senior Reliability Engineers to proactively provide thoughtful and meaningful feedback for their team. A Senior Reliability Engineer is expected to spend time helping team members to improve their skills. A Senior Reliability Engineer is expected to identify and nurture candidates for Senior Reliability Engineer positions.'

  include ReliabilityEngineerExpectations, as: 'Reliability Engineer Expectations'
  include SeniorEngineerExpectations, as: 'Senior Engineer Expectations'
  include CoreEngineerExpectations, as: 'Core Engineer Expectations'
end
