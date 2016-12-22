# Harvest support projects

To be able to better track support hours and invoices for customers, we'd like to start using Harvest projects.

Harvest projects allow us to set a budget in hours, and for time to be tracked directly against these. On the Projects dashboard, at a glance, it's clear how projects are performing, which are close to exceeding their budget.

Each support project in Harvest can have invoices attached to them. In future invoices we send to customers should always be attached to a project. This way we'll always be able to better track when invoices need to be created and sent for specific work.

## Setup for 2017

In order to migrate away from the existing spreadsheet system, at the beginning of 2017, the current hourly balance for each customer will be offset from the initial Harvest project for each customer. Each customer has been setup a new project for January 2017 with the standard set of monthly hours.

Our internal API will be amended to support extracting the hourly balances from Harvest rather than the spreadsheet, so that our digest emails are in sync.

Profit and loss reports will be done from within Xero.

## Changes for the support team

Currently, support teams track time against the default project assigned to each client. The only difference for the teams will be to track against the correct months project in Harvest. Projects representing previous months will be archived so that they don't pollute the project drop-downs.

## Monthly tasks

At the end of each month, we'll need to create new projects for the following month. This can be done by:

 1. Duplicating the current month's project
 2. Adjusting the values for start and end date
 3. Set the monthly budget based on the standard recurring value and adjusting based on the current hourly balance for the client
 4. Updating the description of the project outlining the changes to the budget
 5. Attaching the generated invoice for the new month to the new project
 6. Ensuring the team are assigned to the project

In the future we'd aim to have this step automated.

## Top ups

### General

If a customer requests a standard top up of their support hours, then the project hours for the current month can be adjusted accordingly, and a top up invoice attached to the project. The description of the project should be updated to clearly state a top up has been made and for the hours.

### Specific work

If a customer wants to set aside a top up of additional hours, but for specific work other than support, then this should be created as a separate project, with an invoice attached. Budget alerts should also be setup so that we can keep the customer informed of the additional spend.
