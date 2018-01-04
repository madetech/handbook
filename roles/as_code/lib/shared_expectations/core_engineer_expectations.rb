class CoreEngineerExpectations < JobSpec::Role::Expectations
  expected 'to be actively practicing TDD',
    'We expect our engineering team to write tests first by default. We expect every feature to be tested. Every Pull Request (or equivalent chunk of work put up for peer review) must contain a test. If for some reason there are extenuating circumstances for not writing tests then more than one engineer should peer review and verify this.'

  expected 'to productively pair with their colleagues',
    'We expect our engineering team to be friendly and lovely people to pair with. All pairing dynamics are different, sometimes you will be pairing with someone with less experience, sometimes you will have the same experience. Adjusting the speed of your work to accomodate for your pair is important and special care must be taken when mentoring/coaching those with less experience. No matter who you are pairing with you must take turns to compromise when your opinions differ.'

  expected 'to request peer reviews for the code they write',
    'We expect our engineering team to always have their code peer reviewed at the least by one other person before merging. It\'s the responsibility of the code author to ask their colleagues to review and to merge the code in a timely fashion.'

  expected 'to provide meaningful and considerate peer reviews for others',
    'We expect our engineering team to provide feedback that makes code safer, easier to maintain and advances the knowledge of the original author. We expect everyone to negotiate and compromise when making a call on whether feedback should be addressed or not.'

  expected 'to keep their team updated on current work in progress',
    'We expect our Engineers to keep their fellow team members up to date with their progress. A good litmus test for this is everyone on the team can describe what their team mates are up to.'

  expected 'to facilitate showcases and retrospectives',
    'We expect our Engineers to be able to demonstrate the successes of their iterations with weekly showcases to customers. We also expect Engineers to be able to facilitate retrospectives with engaging formats and customer involvement. Good teams will rotate this responsibility on a weekly basis.'

  expected 'to be involved in practice improvement discussions',
    'We expect everyone in our team to reflect on our practices and be a proactive voice in suggesting change. We expect you to be reflecting on your own development practices, reflecting on your team and the wider business.'
end
