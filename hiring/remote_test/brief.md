# Blogging Service Brief

## Vision

We've had a new idea for a blogging service. Users can post messages of up to 150 characters in length which will appear on their **timeline** in descending chronological order.

Users will eventually be able to **follow** other users and are in turn able to be **followed** themselves.

We believe this to be a very unique and exciting idea.

## Build a Prototype

We'd like you to build a prototype of the timeline feature so that we can demo it to stakeholders. The feature should be built into an app that is in working order when delivered.

As this is a prototype there is no need to setup user authentication. The purpose of this prototype is to demo the timeline functionality *only*.

As a user:

1. I should be able to post a message to the timeline
2. I should be able to see all messages on the timeline
3. I should be able to delete a message from the timeline

## Requirements

 - The homepage will be comprised of the timeline and a form for posting a message to the timeline
 - A form with a single field for the message should be positioned at the top of the timeline
 - The form should display a useful error to the user if:
    - The message is empty
    - The message is more than 150 characters
 - Upon successful submission, the user should then see their post listed on the timeline along with a success message
 - The timeline should be displayed below the form
 - The timeline should be ordered with the most recent posts appearing at the top of the page
 - The message should be displayed along with a nicely formatted time since it was posted, e.g. "20 minutes ago", "5 days ago"
 - The message should be able to contain newlines
 - Each message should have a delete button next to it
 - After deletion the user should be shown a success message

## Coding standards

 - Use git to version control the application
 - Install rubocop and ensure it's passing
 - Each user story should have at least one success case tested with feature tests
 - At least one failure case for posting message should be tested with a feature test
 - Feature tests should be written using RSpec and Capybara (we recommend using our gem to get started quicker - https://github.com/madetech/bdd-rails)
 - Unit test your model validation with RSpec and shoulda-matchers
 - Include instructions in a README on how to run the application and how to run the test suite

## Submission

Please publish your submission to GitHub or email us a zip or tarball of your prototype and email it back to us.
