JobSpec::Role.definition 'Senior Engineer' do
  description <<~DESCRIPTION
    Our Senior Engineers combine technical excellence, drive to deliver, and coaching, to achieve outcomes for our customers and their users, and to establish strong engineering cultures within our customers organisations. They find themselves working on a variety of different problems from monoliths to microservices, upskilling colleagues and customers, always finding themselves learning from others, while constantly striving to be nice humans :)

    ## What does the job entail?

    We primarily write and deliver custom software for the public sector. We work across central and local government, as well as in health, and our past lies in the technology startup world. Technical excellence for us isn’t about delivering to feature lists. We place a strong emphasis on outcome-based delivery; ensuring our customer’s goals are understood and achieved with the technology we deploy.

    Our teams have used Ruby with Rails and Sinatra, ES6 with React and Angular 2, C# with .NET Core. We don’t limit ourselves as a company and we expect all our Engineers to be keen on learning new technologies. Automation is important to our teams, so we make sure there is a CD pipeline set up to build, test, and release. Also, we will usually be responsible for setting up a customer’s infrastructure too! Such as on AWS, GCP or Azure using a tool like Terraform, though sometimes we opt for a Platform as a Service like Heroku.

    We grow a team of polyglot programmers, which you might already consider yourself to be, who are versed in a mix of paradigms such as object-oriented, functional, declarative, event-based and aspect-oriented. To create this environment our Senior Engineers need to embrace sharing their knowledge and skills with others, and they need to keep an open mind – we’d love to hear some examples of mentoring, coaching and growing team members. Maybe you will have written some blog posts about your discipline, or perhaps even delivered a talk or two.

    ## What experience are we looking for?

    While we will look for you to have experience in these things, if you don’t have one of these don’t let that stop you applying.

    - Written code with tests
    - Delivered in an agile environment
    - Worked with more than one programming language
    - Worked with databases
    - Worked with APIs
    - Debugging experience in a range of systems
    - Evidence of self-development – we value keen learners
    - Drive to deliver outcomes for users
    - Desire to mentor others
    - Empathy and people skills

    ## Optional experience

    Don’t forget to mention any of the experience listed below. While it’s optional, it’s all highly desired!

    - Consultancy
    - Working directly with customers and users
    - Working within multidisciplinary teams with product, design, and technology working within the same cycles
    - Showcasing and presentation skills
    - Agile practices such as Scrum, XP, and/or Kanban
    - Pair programming – we pair around 50% of the time
    - Writing code with test-driven development
    - Component-based design techniques such as using pattern libraries, styled-components, CSS-in-JS, BEM, and/or SUIT CSS
    - Debugging infrastructure (AWS/Heroku/Linux/HTTP, GCP and Azure)
    - The React ecosystem including a test-driven approach
    - Infrastructure as code tools such as Ansible, Chef, Puppet, Terraform and/or Saltstack
    - Familiarity with architectural and design patterns
    - Use of architectural decision records
    - Writing blog posts and giving talks

    ## What we will provide you

    - Time to learn every Friday afternoon
    - Space to write blog posts regularly
    - Contribute to our culture and shape the way we work – even our handbook is open-sourced on Github
    - Regular lunch and socials with colleagues – we are vegan, halal, and non-drinker friendly, as well as meat-eater and drinker friendly
    - Retreats and trips with your colleagues every year
    - Paid holidays for your third and fifth anniversary working for us
    - Flexible holiday, working hours, and part-time
    - Generous parental leave and support
    - Season ticket loan
    - Cycle to work scheme, a place to secure your bike and a shower
    - Contributory pension scheme
    - Conference tickets and training
    - Volunteering time to help others get into the technology industry

    ## Salary

    This role has a salary of £50-75k depending on experience.
  DESCRIPTION

  salary 50_000..75_000

  expected 'To be continuously providing sensible and well justified architectural guidance to teams, combining an understanding of the clients context, existing architectural landscape and the knowledge of the teams context, existing architectural landscape and the knowledge of the team',
           ""

  expected 'To be productive in a wide range of tooling, libraries and architectural styles',
           ""

  expected 'To continuously coach & mentor others to improve their lean and iterative approach to solving problems',
           ""

  expected 'To be productive in multiple paradigms of programming',
           ""

  expected 'To be leading the way with introducing new technologies to deliveries',
           "We expect our Senior Engineers to help teams use new technologies as part of deliveries. We expect them to make suggestions before new projects boot up and to help the adoption of the technology during the delivery through pairing and otherwise coaching their colleagues."

  expected 'To collaborate with Reliability Engineers as appropriate',
           ""

  expected 'Within the context of a single code-base to be contributing sensible and well justified software architectural decisions on a daily basis with a preference towards simple & maintainable designs.',
           ""

  expected 'To be able to autonomously deliver working software',
           "We expect our Engineers to be able to work on entire features, from conception through to production deployment, without guidance and direction from others. This doesn't mean they have to be delivered without pairing, or asking advice from the wider team. What it does mean is the primary force for ensuring the feature is built and deployed in a timely fashion is the responsiblity of the Engineer working on the problem."

  expected 'To be able to build robust, maintainable interactive web-based frontends with an (appropriate amount of) focus on delivering a good user experience',
           ""

  expected 'To continuously seek out understanding of user needs and context, and contribute appropriate course corrections to plans throughout the delivery of software  ',
           ""

  expected 'To be continuously working at a sustainable pace, with an aim to commit to an appropriately sized amount of work',
           ""

  expected 'To be able to take a report of defect in a live system from a stakeholder and triage the impact and scope appropriately',
           ""

  expected 'To be able to resolve defects by leveraging existing test suites, production monitoring tooling and debugging techniques',
           ""

  expected 'To be continuously building an appropriate level of security into working software',
           ""

  expected 'To be continuously seeking to automate repetitive manual tasks',
           ""

  expected 'To be able to apply appropriate strategies to deal with legacy code (code without tests)',
           ""

  expected 'To be aware of political landscapes within client organisations and to be considerate of it. ',
           ""

  expected 'To continuously practice TDD, including small incremental refactorings throughout the process of delivering software, with the intent to ensure low cost of change',
           "We expect our engineering team to practice TDD discipline to a high standard. This is not something we simply pay lipservice to, we expect it to be a default in every engineer' day to day"

  expected 'To continuously translate user needs into fast, maintainable, automated high-level tests as appropriate',
           "We expect our engineering team to write high-level tests, ideally as part of an Acceptance-Test Driven Development discipline."

  expected 'To be able to productively pair with colleagues, and to pair when it is appropriate to do so',
           "We expect our engineering team to be friendly and lovely people to pair with. All pairing dynamics are different, sometimes you will be pairing with someone with less experience, sometimes you will have the same experience. Adjusting the speed of your work to accomodate for your pair is important and special care must be taken when mentoring/coaching those with less experience. No matter who you are pairing with you must take turns to compromise when your opinions differ."

  expected 'To communicate with customers without reminder.',
           "We expect our engineering team to keep their customers up to date with progress. Customers should be invited to standups or at appropriate points in time. A customer should never have to chase us for an update."

  expected 'To be productive, in at least one programming language including a range of different tools that achieve the same goal in that language ',
           "We expect our engineering team to understand that there are multiple tools available to achieve the same task at hand, and to explore these options in at least one language."

  expected 'To keep the team updated on current work in progress, including any blockers or potential risks, making use of any tooling the team has chosen.',
           "We expect our engineering team to keep their fellow team members up to date with their progress. A good litmus test for this is everyone on the team can describe what their team mates are up to."

  expected 'To be responsible for the security of devices used for work',
           "We expect our engineering team to understand how to secure the devices they use for work including work issued laptops, personal computers, mobile phones, and other electronic devices. We expect invididuals to ensure they adhere to our security guidelines upon setting up devices and to ensure that their machines are compliant at all times."

  expected 'To be involved in improving software delivery practice at Made Tech',
           "We expect our engineering team to reflect on our practices and be a proactive voice in suggesting change. We expect you to be reflecting on your own development practices, reflecting on your team and the wider business."

  expected 'To request peer reviews',
           "We expect our engineering team to always have their code peer reviewed at the least by one other person before merging. It's the responsibility of the code author to ask their colleagues to review and to merge the code in a timely fashion."

  expected 'To be producing sensible lightweight release plans with an aim to get the thinnest slice possible in the hands of real users as quickly as possible, involving the team and stakeholders where appropriate.',
           "We expect our engineering team to be actively form sensible strategies to get thin slices released to real users, and to have alignment on this strategy with the customer and with the team."

  expected 'To be practicing continuous integration of code, making frequent small incremental changes to the code base, decoupling deployment from release as appropriate',
           "We expect our engineering team to be practicing continuous integration, and to consider decoupling release from deployment, if required and appropriate."

  expected 'To take an equal share in owning the facilitation of team ceremonies, with a focus on ensuring that they are held regularly and are following any rules that the team has agreed to.',
           "We expect our engineering team to ensure team ceremonies such as planning, retrospectives, and standups happen on a regular basis and to be guardians of any norms that have been agreed to by the team."

  expected 'To be responsible for releasing working software to real users',
           "We expect our engineering team to own the whole process of getting working software in front of real users, this means from writing the code through to deploying and actively seeking feedback."

  expected 'To provide meaningful and considerate peer reviews for others',
           "We expect our engineering team to provide feedback that makes code safer, easier to maintain and advances the knowledge of the original author. We expect everyone to negotiate and compromise when making a call on whether feedback should be addressed or not."

  expected 'To be willing and able to pick up new programming languages, technologies and techniques',
           "We expect our engineering team to be open to learning new languages and to see it as an opportunity to broaden skills rather than something to be fearful of. We expect our engineers to be curating their generalist skillset to aid in picking up new languages."

  expected 'To be able to turn user needs into actionable technical tasks that can be delivered incrementally',
           "We expect our engineering team to be able to turn ideas into technical tasks."

  expected 'To be contributing your honest opinion to the team, in a respectful way, even if it conflicts with more senior members',
           "We expect our engineering team to work as a team. That means we need our engineers to actively work to combine their knowledge, skill and opinions with that of the whole team."

  expected 'To be continuously applying a lean and iterative approach to solving problems',
           "We expect our engineering team to embody a lean-mindset, solving problems by delivering early and often. We expect our engineers to actively seek out more effective ways to achieve this."

  expected 'To keep timesheets up-to-date and submitted before invoicing deadlines',
           "We use timesheets to invoice our customers, and it is important that we are able to send accurate invoices to our customers. We expect you to keep your timesheets up-to-date and to have submitted them before any invoicing deadlines."

  expected 'To continuously make proactive improvements to the way Made Tech operates by first getting advice from impacted people and making the change',
           "We expect everyone to evolve the way Made Tech operates. By involving everyone who is impacted by a change, it is possible for everyone to make improvements."
end
