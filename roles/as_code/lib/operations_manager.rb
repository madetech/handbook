require_relative './shared_expectations/operations_coordinator_expectations'

JobSpec::Role.definition 'Operations Manager' do
  description <<~DESCRIPTION
    Our Operations Manager is responsible for the smooth day-to-day running of the operations of the business. The Operations Manager proactively identifies and delivers improvements to the way Made Tech operates. The Operations Manager has a deep understanding of the strategic goals of the business and uses this direction to define the day-to-day activities of the operations team. 

    ## Salary

    This role has a salary of £35-45k depending on experience.
  DESCRIPTION

  salary 35_000..45_000

  expected 'to proactively identify significant improvements to business processes',
    'We expect our Operations Manager to proactively identify and implement major improvements to how Made Tech operates, such as identifying the need to improve our credit control processes.'

   expected 'to develop roadmaps to deliver strategic business objectives',
   	'We expect our Operations Manager to understand quarterly business objectives, to develop roadmaps, and to prioritise their workload to ensure these objectives are delivered to the desired timescale.'

   expected 'to implement and monitor policies to ensure the security of company and customer data',
     'We expect our Operations Manager to implement policies and practices to ensure Made Tech is compliant with any relevant information security accreditations and legal requirements.'

   expected 'to proactively analyse performance metrics and propose and implement changes to improve key metrics',
     'We expect our Operations Manager to monitor key business metrics and propose to senior management methods by which these metrics can be improved.'             

  include OperationsCoordinatorExpectations, as: 'Operations Coordinator Expectations'
end
