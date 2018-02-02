require_relative './shared_expectations/core_engineer_expectations'

JobSpec::Role.definition 'Marketing Executive' do
  description <<~DESCRIPTION
    As our first marketing hire, you will play a significant role at Made Tech. Working with the Company Directors and sales team to take our services to market and will help to drive the growth of our business in the UK.

    ## What does the job entail?

    You’ll help to shape how we reach and interact with our customers, creating inspiring and compelling campaigns, resources and marketing materials that demonstrate how Made Tech can help businesses.

    You will:

     - Create messaging and content that will help our audience to understand Made Tech’s service offerings. This may include content such as research and reports, guides, and presentations.
     - Plan and execute marketing programs. They may include but are not limited to outbound email and direct mail campaigns, social media, webinars, partner activities, content marketing, paid advertising, account-based marketing and events.
     - Be responsible for tracking, measuring and communicating results.

    This is a brilliant opportunity to have a wide remit and big influence on how we shape our marketing activities. We expect the right candidate will grow with us and there will be plenty of opportunities to take on new responsibilities and help build out a first-class marketing team.

    ## What experience are we looking for?

    As the ideal candidate, you’re a leader and a doer. You take a creative approach to challenges and initiatives and never settle for good enough. You’re strategic and collaborative with a strong bias to action and you care about doing what’s best for our customers and for Made Tech.

    You’ll have a passion for content marketing, demand generation, account-based marketing, and designing and executing marketing campaigns. You’ll be able to help shape our marketing strategy, as well as roll up your sleeves to execute on it.

    What’s required:

     - Strong written & verbal communication skills
     - Good project management and organisational skills
     - Able to proof read all marketing copy for emails, leaflets, webpages, etc.
     - Understanding of customer segmentation
     - An ability and willingness to learn things quickly
     - Ability to analyse data, spot trends and provide insights
     - Be capable of prioritising your busy workload to ensure that all targets are achieved through managing your team effectively to deliver results
     - Thrive on ownership and accountability – and have a proven track record of acting on your own initiative to deliver change
     - Experience of marketing tools such as Google Analytics and Adobe Creative Suite

    Everything else is optional but highly sought after. We would love you to have experience in:

     - 2+ years commercial experience in a marketing role
     - Experience of marketing automation tools (e.g. Drip, HubSpot & Convert Flow)
     - Experience of Social Media Marketing tools
     - Interest in growth hacking and other non-traditional marketing methods.

    ## What is it like to work at Made Tech?

    We are a technology focussed business that values continuous improvement, experimentation, trusting individuals and teams to do the right thing.

    We are a growing business and now is a good time to join us as there is great opportunity to have a massive impact on the business and grow with us too.

    ## Salary

    This role has a salary of £20-30k depending on experience.
  DESCRIPTION

  salary 20_000..30_000
end
