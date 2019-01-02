require_relative './shared_expectations/delivery_lead_expectations'

JobSpec::Role.definition 'Head of Delivery' do
  description <<~DESCRIPTION
    The Head of Delivery is responsible for maintaining, evolving, and improving the approach to agile delivery at Made Tech. The Head of Delivery leads and supports a team of Delivery Managers.

    Our Delivery Managers are accountable for the effective delivery of complex, high-risk products and services. They have strong communication skills and are comfortable engaging with senior stakeholders. They typically manage one or two agile projects as part of a highly skilled, multidisciplinary team.

    ## What does the job entail?

    Made Tech are experiencing a period of rapid growth and are scaling quickly to keep pace with demand. We are working with larger-scale projects and an increasing number of stakeholders, resulting in the expansion of the current delivery function. We have identified that a new, senior layer within the function is needed to ensure consistent direction, free up the delivery teams and provide a clear line of contact for client relationships.

    As a result, we are looking for an experienced Head of Delivery to truly own the delivery practice at Made Tech, to support and nurture a growing team of Delivery Managers, and to continue to evolve, improve, and scale how we work.

    You'll ensure teams are focused on delivering customer success, are applying the most appropriate agile tools and techniques, and are delivering in line with The Made Tech Way.

    You'll support teams navigate more complex situations by drawing on your experience to ensure roadblocks are removed before they become significant impediments.

    You will identify training needs and provide coaching to customers and team members where necessary. Using retrospectives, pair programming and feedback loops, you will facilitate continuous improvement, nurturing your team's capabilities and promoting appropriate agile and lean techniques and tools.

    You will focus on improving the delivery team's ability to meet deadlines and adhere to the roadmap by diplomatically protecting them from outside influences and unnecessary distractions, such as ad hoc client meetings or excessive time spent in stand-ups; instead, engaging the teams with the clients in more structured processes such as workshops, sprint planning, daily scrums, show and tells, retros, etc.

    ## What we need from you

    You must have client-facing experience and a proven track record of working with customers to build delivery roadmaps. We'll want to discuss previous roadmap processes you have been a part of, including how you helped to distil key client objectives into epics and user stories.

    Communication will be key to your success, so you should feel comfortable presenting to and negotiating with senior stakeholders in a professional manner, so that the needs of everyone involved in a project are kept in balance, whilst mediating disputes when required.

    Whilst we are an agile software development company and truly believe in the benefits of an agile mindset, we are also aware that not all companies have bought in to the process to the same extent. As a result, you will need to be flexible in adapting delivery style to meet the specific needs of each client and we will want to hear about times that you have applied that flexibility previously, and the benefits that it brought.

    Additionally, you will have a good understanding of the pros and cons of using Scrum and other agile methodologies, particularly when it comes to coaching and empowering delivery teams. You should be able to provide examples of when having a Scrum approach has become problematic for a team and how you helped them to overcome those issues.

    As you will be adopting a servant leader approach to management in this role we will want to hear about how you have worked this way within previous teams, particularly focusing on how you have encouraged servant leadership and why you believe it is a beneficial model for team management.

    You should have experience managing a budget effectively, preferably using a T&M approach. We will want to discuss how you have approached budget management in the past and would love to hear of projects that you budgeted which exceeded the customer's expectations in terms of what they received within their financial constraints.

    ## What you'll get from us

    You will take ownership of the delivery function of a company that is rapidly scaling to meet increased customer demand, giving you exposure to a huge variety of enterprise-level, highly complex programmes with ever evolving challenges, whilst getting to work with a wealth of market-leading companies.

    As a technologically driven company that espouses best practice and aims to become a Thought Leader within the world of software delivery, Made Tech will provide you the opportunity to use the most exciting new technologies and to work in an environment where we are always striving to stay on the cutting-edge of market trends and processes.

    You'll have the chance to develop and adapt our agile processes, coaching both internal and external teams on best practice and designing workshops for building capabilities within customer organisations.

    Finally, as we continue to grow rapidly there are a wealth of directions that a driven individual can progress to within the company, depending on their personal interests. 

    ## What is it like to work at Made Tech?

    We are a technology focussed business that values continuous improvement, experimentation, trusting individuals and teams to do the right thing.

    We are a growing business and now is a good time to join us as there is great opportunity to have a massive impact on the business and grow with us too.

    ## Salary

    This role has a salary of £80-95k depending on experience.
  DESCRIPTION

  salary 80_000..95_000

  expected 'to support, lead, and motivate a team of Delivery Managers',
    'We expect our Head of Delivery through line management to hire, coach, and nurture a team of Delivery Managers to deliver successful engagements for all of Made Tech\'s customers.'

  expected 'to support teams navigate complex situations',
    'We expect our Head of Delivery to be highly adept at succesfully resolving complex and sometimes conflict situations. The Head of Delivery is expected to proactively identify and help resolve situations that post a potential threat to Made Tech.'

  expected 'to support engagement leads in delivering valuable reporting materials',
    'We expect our Head of Delivery to ensure Engagement Leads are equipped and held to account to deliver regular engaging and valuable reporting materials to our customers and the Made Tech leadership team.'

  expected 'to own and evolve The Made Tech Way',
    'We expect our Head of Delivery to be the guardian of The Made Tech Way - the guide for how we successfully engage with customers. The Head of Delivery should be regularly introspecting with the Engagement Lead community to identify how we can evolve and improve our way of engaging customers.'

  expected 'to play an active role in sales activity',
    'We expect our Head of Delivery to represent the Made Tech delivery practice in sales activity to develop delivery plans, leading scoping, and selling Made Tech\'s capability.'

  expected 'to boot up new deliveries',
    'We expect our Head of Delivery to get hands-on and support Delivery Managers in booting up successful deliveries, helping to ensure good practices are embedded in the team from day one, and that the customer has a high degree of confidence in Made Tech.'

  include DeliveryManagerExpectations, as: 'Delivery Manager Expectations'
  include DeliveryLeadExpectations, as: 'Delivery Lead Expectations'
end
