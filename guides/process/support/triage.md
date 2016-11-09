# Support Triage

Triage is the usual entry point to the support process. Customers will email their request to support@madetech.com, which is routed to [Zendesk](https://madetechsupport.zendesk.com).

On ocassion customers will ask for things via Slack or phone, in which case we can create the ticket on their behalf in Zendesk.

## Process Overview

It is the responsibility of the Triage Pair to:

- [ ] 1. Triage the oldest item from the queue
- [ ] 2. Record time in Harvest
- [ ] 3. Ensure we're meeting our Service Level Agreements
- [ ] 4. Ensure customers are proactively made aware when their hours are close to running out

## 1. Triage request

Triaging involves analysing the customer's request and figuring out the best way to deal with it. The course of action depends on the nature of the request.

### Mission critical request

If you reasonably believe the request to be mission critical (i.e. the customer application is offline, a major piece of functionality is unavailable), then we would typically use best efforts to restore that service, regardless of the time needed.

### Expected to take less than 2 hours

For less critical requests, if we expect delivering the solution to take less than 2 hours, we should try to solve there and then.

### Expected to take more than 2 hours

For less critical requests, if we expect delivering the solution to take more than 2 hours, we should allocate the request to the relevant [Customer Roadmap](https://trello.com/b/fXZz8YC3/support-epics), letting the customer know that this course of action was taken. You should have a conversation with the 'Account Manager' for that customer so they can pick up the prioritisation of this work during the next customer support catchup.

Moving the request to the Customer Roadmap should be considered a successful triage resolution, and so the ticket should be closed.

Customers may ask for time estimates for larger pieces of work. This [FAQ answer](faqs.md) should help.

- [ ] You've [Popped the Why Stack](http://www.mattblodgett.com/2009/01/pop-stack.html) to ensure you understand what commercial goal the customer is trying to solve
- [ ] You've successfully resolved the request or added to the Customer Roadmap
- [ ] You can assert that any code change you made has improved the quality of the application

## 2. Record time in Harvest

We bill support customers based on the hours we spend delivering for them. It's really important timesheets are up to date, as we send regular emails to customers showing how many hours they have remaining for the month. Timely information is key for customers to use this for decision making.

For triage tasks you should start the clock running at 15 minutes, even for smaller tasks. This is to account for the cost in context switching. We should bill for all time we spend servicing that customer, including responding to tickets and on customer calls.

- [ ] You're recording your time in Harvest every time you action a triage ticket

## 3. Meeting Service Level Agreements

We aim to:

* Acknowledge customer requests within 1 working day
* Resolve customer requests within 2 working days

If you believe based on the current workload that either of these goals may be compromised, you should ask for help.

- [ ] Triage is acknowleding every support request within 1 working day
- [ ] Triage is resolving every support request within 2 working days

## 4. Make customers aware of their hours

If customers make heavy use of the support service, they can quickly run out of hours. We send automated emails every week to let them know their current balance.

If you observe that you're dealing with a high number of requests for a customer, it's a good idea to check how many hours they have remaining and proactively make them aware if their balance is running low.

There are a number of options at this point:

* Reducing their usage of the service for the remainder of the month
* Selling a 'support topup' for a one-off hours increase
* Increasing the regular monthly hours if this is a recurring pattern

- [ ] Customers who are low on hours are proactively made aware

## Ticket status

In Zendesk we use three ticket statuses:

* New/Open: request is in play to be dealt with
* Pending: request is awaiting input from customer
* Closed: request has been successfully resolved
