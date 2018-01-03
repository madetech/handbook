require_relative './shared_expectations/core_engineer_expectations'

JobSpec::Role.definition 'Reliability Engineer' do
  description <<~DESCRIPTION
    Our Reliability Engineers evolve and maintain applications and infrastructure for our customers. Scalability and proactive improvements are the focus and good communication skills – the necessity.

    ## What does the job entail?

    We primarily write and deliver custom software to our customers. We build solutions in a variety of languages and platforms, historically Ruby on Rails, we tend to use React, JavaScript, Elixir, and Clojure these days. We will usually be responsible for setting up a customer’s infrastructure on AWS with tools like Ansible and Terraform though sometimes we opt for a Platform as a Service like Heroku. We make sure there is a Continuous Delivery pipeline running our automated test suites before deploying changes.

    Our application and infrastructure lifetime support services are an important part of our business. Often once our delivery teams have built custom software, the applications and infrastructure will be on boarded into our lifetime support team. This team is responsible for the ongoing development of applications, adapting applications to changing requirements as our customers grow, and fixing problems as they arise. We also onboard some applications that our teams haven’t built if they pass our quality and maintainability audits.

    Reliability Engineers will split their time between responding to automated alerts, proactive codebase improvement, answering requests sent into our customer support desk, and ongoing feature development.

    This role requires less of a physical presence with customers and therefore it is our first fully remote engineering role. You are of course welcome to work from our offices rather than remote but the option is open. As previously mentioned, regular communication with customers is still a must.

    ## What experience are we looking for?

    We’ll expect you to be a polyglot programmer versed in a mix of object and functional programming languages. We expect you to be able to jump into a project in a language, framework or configuration you’ve not worked in before and be able to fix issues, improve the codebase and build new features in it. Not only this but the right person would be adept in sharing their knowledge with others – we’d love to hear some examples of coaching and growing team members.

    Multitasking, or more accurately, prioritisation is a big part of being a Reliability Engineer. We expect you to be able to prioritise your work, be able to switch onto resolving emergencies without being told to, and keep all customers up to date.

    Code is only the half of it. The other half is communication. We expect you to be a great communicator with customers and colleagues in written and spoken English. Reliability Engineers keep in touch with customers mostly via Slack and Google Hangouts.

    Further required experience:

    - Debugging a range of applications
    - Experience debugging infrastructure (AWS/Heroku/Linux/HTTP)
    - Working directly with customers
    - Writing code with Test Driven Development
    - Pair programming as we pair around 50% of the time
    - Agile practices such as Scrum, XP, and/or Kanban
    - Working with a range of SQL and NoSQL databases
    - Infrastructure as code tools such as Ansible, Chef, Puppet, and/or Saltstack

    Everything else is optional but highly sought after. We would love you to have experience in:

    - Writing code with Acceptance Test Driven Development
    - Component based design techniques such as using pattern libraries, styled components, CSS-in-JS, BEM, and/or SUIT CSS
    - The React ecosystem including a TDD approach

    ## Salary

    This role has a salary of £40-75k depending on experience.
  DESCRIPTION

  salary 40_000..75_000

  expected 'to autonomously deliver working software',
    'We expect our Reliability Engineers to be able to work on entire features, from conception through to production deployment, without guidance and direction from others. This doesn\'t mean they have to be delivered without pairing, or asking advice from the wider team. What it does mean is the primary force for ensuring the feature is built and deployed in a timely fashion is the responsiblity of the Reliability Engineer working on the problem.'

  expected 'to be fully billable by timesheeting 7 hours daily',
    'We expect our Reliability Engineers to ensure they are timesheeting 7 hours daily into harvest. As our current offering means we offer hours to our customers we need to make sure we are working through these hours and providing value to our customers.'

  expected 'to regularly communicate with customers without reminder',
    'We expect our Reliability Engineers to keep their fellow team members up to date with their progress. A good litmus test for this is everyone on the team can describe what their team mates are up to.'

  expected 'to be a responsible remote worker',
    'We expect our Reliability Engineers to communicate more than anyone else in the business if they choose to work fully remote. Remote working requires extra attention to be paid to communication channels like email and slack.'

  expected 'to effectively juggle commitments',
    'We expect our Reliability Engineers to be able to balance the priority of their work. Having an understanding of the severity of work along with expected time to fix is important and it should be used to help prioritise what to work on. Customers expectations need to be set, met and if they cannot be met, be reset early and often.'

  expected 'to provide an outstanding customer service',
    'We expect our Reliability Engineers to be a delightly person to talk to for our customers. Our conversations should be professional and friendly, we should small talk where possible, use a smiley face once in a while and generally be nice folk.'

  expected 'to proactively identify technical improvements and recommend them to customers',
    'We expect our Reliability Engineers to be able to spot areas for improvement in customer codebases such as test suites, dependency upgrades, performance issues detected by monitoring. We also expect them to be able to highlight these issues in a jargon free way and be able to convey the relative urgency of the issues ultimately leading to our customer codebases being improved.'

  include CoreEngineerExpectations, as: 'Core Engineer Expectations'
end
