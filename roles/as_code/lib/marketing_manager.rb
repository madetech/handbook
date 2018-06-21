require_relative './shared_expectations/marketing_management_expectations'
require_relative './shared_expectations/sales_marketing_expectations'
require_relative './shared_expectations/employer_marketing_expectations'

JobSpec::Role.definition 'Marketing Manager' do
  description <<~DESCRIPTION
    Our Marketing Manager position is currently filled.

    ## Salary

    This role has a salary of £30-45k depending on experience.
  DESCRIPTION

  salary 30_000..45_000

  expected 'to be reporting on the effectiveness of marketing campaigns using pre-determined KPIs',
    'We expect our Marketing Manager to provide regular and accurate reporting on the effectiveness of our marketing campaigns. We expect our Marketing Manager to identify the most appropriate KPIs against which to measure of marketing activity.'

  expected 'to be autonomously implementing against the marketing plan',
    'We expect our Marketing Manager to work autonomously against, and demonstrate ownership of the marketing plan.'

  expected 'to be clearly communicating our value proposition, services, and case studies',
    'We expect our Marketing Manager to quickly understand and to demonstrate a clear articulation of Made Tech\'s position.'

  expected 'to be managing and refining our social media activity',
    'We expect our Marketing Manager to own and improve our social media activity, and include measures for its effectiveness in marketing reports.'

  expected 'to be managing and refining our content marketing activity',
    'We expect our Marketing Manager to own our content marketing activity, including defining an appropriate content calendar, and working with internal and external content producers to deliver high quality, relevant content.'

  expected 'to be managing and improving our website',
    'We expect our Marketing Manager to own the roadmap for the website and to be responsible for ensuring our value proposition and service offering is easily understandable. We expect appropriate website effectiveness metrics to be included in marketing reporting.'

  expected 'to be using data to optimise our marketing activities',
    'We expect our Marketing Manager to make use of data to continue to improve the effectiveness, and to justify appropriate places and levels of spend for our marketing activities.'

  expected 'to be working with our technology and consulting partners to run joint marketing campaigns',
    'We expect our Marketing Manager to build relationships with our partners, and to deliver joint marketing campaigns to increase MQLs through our partner channel.'

  expected 'to understand and practice techniques advocated in Watertight Marketing',
    'We expect our Marketing Manager to practice the Watertight Marketing approach.'

  include MarketingManagementExpectations, as: 'Marketing Management Expectations'
  include SalesMarketingExpectations, as: 'Sales Marketing Expectations'
  include EmployerMarketingExpectations, as: 'Employer Marketing Expectations'
end
