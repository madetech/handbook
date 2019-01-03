require_relative './shared_expectations/operations_coordinator_expectations'

JobSpec::Role.definition 'Operations Coordinator' do
  description <<~DESCRIPTION
    Our Operations Coordinator supports the smooth running of Made Tech by ensuring deliveries are well resourced, that the Live Services team is well supported, and through reporting on billing and utilisation.

    ## Salary

    This role has a salary of £25-35k depending on experience.
  DESCRIPTION

  salary 25_000..35_000

  include OperationsCoordinatorExpectations, as: 'Operations Coordinator Expectations'
end
