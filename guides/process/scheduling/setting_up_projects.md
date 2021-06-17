# Setting up Projects

We use [Harvest](https://madetech.harvestapp.com/) and [Forecast](https://forecastapp.com/967648/schedule/projects) to track and project time spent on both internal and customer-facing projects at Made Tech.

It is important that we set up projects consistently, as accurate time tracking underpins a number of important things:

- We almost always invoice customers on a Time and Materials (T&M) basis, which means timesheets for customer engagements are converted directly in to invoices

- There are various transactions that happen between markets (e.g. for a London person spending time working on a delivery in Manchester) that impact revenue and cost in both markets

- Service Areas have a set budget that they're working to

## Workflow

There are a number of steps to setting up a new project. The remainder of thise guide describes the context behind the decisions you'll need to make when setting up a new project.

1. Create project in Harvest
2. In the case of billable projects ensure there's a budget defined
3. Assign people and rates to project in Harvest
4. Import project to Forecast
5. Forecast people against project in Harvest
6. Ensure the team know what to timesheet against

Before setting up a new project, please ensure you speak with the Ops Team in `#ops-scheduling` channel in Slack.


## Client

Every Project has a Client. Typically this will be the client we're working with. However, there are a couple of exceptions:

### Partner organisations

Sometimes we collaborate with partner organisations. If that partner organisation is "priming" the engagement (i.e. they're billing the client), the client should typically be set as the partner organisation, as we'll be invoicing the partner organisation rather than the client.

### Internal initiatives

If we're working on an internal initiative, such as a Service Area, or running an internal project within a Market, there are a number of internal clients:

- Made Tech: this client is reserved for group-wide activities such as Service Areas, Holidays, Absence etc.

- Made Tech _market_: (e.g. Made Tech Bristol) this client should be used for local internal activities such as chalet projects.  


## Project codes

Project codes help us to more easily allocate time and cost and  make financial reporting less time consuming.

There are a number of components to a project code:

`LOCATION-CATEGORY-NUMBER` or<br>
`LOCATION-CATEGORY-CONTRACT-NUMBER` or<br>
`LOCATION-CATEGORY-SUBCATEGORY-NUMBER`


### Location

A three letter code identifying the location of the project:

- GRP - group (typically Service Areas)
- NOL - no location (e.g. paid time off, absence)
- LDN - London
- MCR - Manchester
- BRS - Bristol

### Category

A three letter code identifying the the category of the project. Billed, Bench and Investment are described in more detail below.

- BIL - Billed to client
- BEN - Bench (AKA chalet) 
- INV - Investment
- INT - Internal (typically a Service Area)
- SAM - Sales and Marketing
- PTO - Paid time off

### Contract

Billed projects are connected to a contract. Typically there will be an overall contract value from which one or more projects draw.

Contract codes are defined in the [Contract Catalogue](https://docs.google.com/spreadsheets/d/1IXUJz_tHRTX9dIJH13mdXtNRWxZc3KknXQjjOCjEqCM). If you need to setup a new contract please liaise with the finance team in the first instance.

### Subcategory

An optional three letter code identifying the subcategory. These are currently used to distinguish different types of internal project:

- ACA - Academy
- REC - Recruitment
- WEL - Culture and Happiness
- LAD - Learning and Development

### Number

This is a number that makes the project code unique. It's important to ensure your project code has not been used before. Harvest will warn you of this, but will not prevent you from creating a project with a duplicate code.

The number confers no meaning.

### Examples

- LDN-BIL-CON01-01 - a billed project in London
- MCR-BEN-01 - a bench/chalet project in Manchester
- BRS-INV-01 - an investment project in Bristol


### Billed, Bench, and Investment

Billed, Bench, and Investment are the primary project categories that we set up day-to-day.

There are some important distinctions:

#### Billed

This is a typical project that is billed back to the customer. Any time that is allocated to this project will end up on an invoice at the end of the month. There are a number of must-haves for a billed project:

- Everybody assigned to the project must have a defined day rate
- Nobody assigned to a billed project must have a zero rate (use an Investment or Bench project for this instead)
- The project must have a budget defined

#### Bench

This is a project to make better use of underutilisation in the team. This could be for team members who are unbilled on customer delivery but wouldn't qualify as an investment, or for an internal initiative.

Team members who are assigned bench projects will negatively reflect on a market's utilisation rate. If a team member from one market works on a bench project in another market they will not be reimbursed for their time.

#### Investment

This is a project that captures proactive investment in an account or workstream. An investment must be a conscious and proveable decision for a longer-term benefit. A team member simply being underutilised should be allocated to a bench project.

Team members who are assigned investment projects will not negatively reflect on a market's utilisation rate. If a team member from one market works on an investment project in another market they will be reimbursed for their time.


## Naming convention

Primarily projects should be named to make it easy at a glance to understand what it is. If it covers a particular phase, or a budget extension, please encode this in the project name.

Additionally, if a project is for investment or bench/chalet time, please make this clear by adding `(investment)` or `(chalet)` to the end of the project name.


## Projects for budget extensions and subsequent phases

Where a project is subject to a budget extension or where we start work on a subsequent phase with a new budget attached, a new project should be created in Harvest.

There should be very few cases where an existing project budget is modified in Harvest.

When in doubt: create a new project!
