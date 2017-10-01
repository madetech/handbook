# Development Practices

When a new developer joins our team, we'll often find they need some guidance on 'The Made Way'. Below we've included a list of practices that we encourage new developers to adopt, so they can get up to speed as quickly as possible:

* Commit frequently (5, 10, 15+ times per day)
* Favour commits into short-lived, small diff, local branches which you should aim to merge into Master via PR the same day 
* Include descriptive commit messages
* Do your best not to break the build. Run the test suit before pushing into origin.
* Don't mark tasks as 'done' until they have been:
    * Cross browser tested
    * Visually checked against designs
    * Code refactored and readable
    * Have a feature / unit / integration test (when necessary).
    * Code is optimised, response time is acceptable. 
    * The ticket is ready for users in production.
* The earlier you tackle the difficult sprint tasks, the better.
* Daily stand-ups are at 10:00am, join via Skype/Google Hangout or email in a standup beforehand.
* Make sure your standup is descriptive e.g. Styling of cart line items and flash notification for mobile and desktop breakpoints' is better than 'working on the cart' 
* Loudly flag any blockers to your team and chase until they are removed.
* Make sure you communicate effectively. Asking too many questions is better than not asking enough:
    * Talk to your team frequently.
    * Request clarifications if you're unsure. 
    * Don't be scared to speak to the customer.
    * Talk to the UI designers if unsure about anything visual, behaviour etc.
* Ask somebody for help if you've run into a problem and can't solve it within ~1hr (it's pretty likely somebody else has encountered it)
* Client showcases are really important. You should always do your best to attend these.


## Red flags on projects

This is a list of red flags to review every day to improve project delivery:

- [ ] No showcase booked in or commitment to customer 
- [ ] Work items are not broken down as small as they can (Follow [INVEST](https://en.wikipedia.org/wiki/INVEST_(mnemonic))
- [ ] Customer is not kept up to date on current progress, or given a ranged estimate
- [ ] When ranged estimates become more or less accurate / precise customer has not been informed
- [ ] Customer has not been informed that work is taking longer than the <75% wrong estimate 
- [ ] Huge commits / Huge chunk of work not pushed yet, PRs should be small!
- [ ] Production Deploy > 1 day ago
- [ ] Not being clear on who the actors are for the current piece of work
- [ ] Not being clear who the customer is
- [ ] Backlog items do not meet the Definition of Ready e.g. (if necessary) have designs, etc
