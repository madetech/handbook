# Contributing to the Handbook

This guide aims to make it easier to submit changes to the Handbook without using `git` or a text editor.

## Updating and adding pages in Github

### Creating a page

1. [Go to the handbook.](https://github.com/madetech/handbook)
2. Click through to the folder you want.
3. Click "Create new file"
4. Type out your contents under "Edit new file" using [Markdown](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).
5. Preview your changes at any time by clicking "Preview".
6. When you're happy with your page, write a short description under "Commit new file". For example, "Add Flexible Holiday Page".
7. Select "Create a new branch for this commit" and give it a name relevant to your change. For example, "add-flexible-holiday-page".
8. Submit the change by clicking "Propose new file".
9. You will then be able to create a Pull Request to get a review of your new page. Click "Create pull request", then share the link with people!

### Updating a page

1. [Go to the handbook.](https://github.com/madetech/handbook)
2. Navigate to the page you wish to update.
3. Click the pencil button in the top right
4. Make the necessary changes using [Markdown](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).
5. Preview your changes at any time by clicking "Preview".
6. When you're happy with your page, click "Commit changes" and write a short description under "Commit message". For example, "update pension scheme page to include the people team email"
7. Select "Create a new branch for this commit" and give it a name relevant to your change. For example, "update-flexible-holiday-page".
8. Submit the change by clicking "Propose changes".
9. You will then be able to create a Pull Request to get a review of your new page. Click "Create pull request", then share the link with people!

### Addressing review

1. Click on the "Files changed" tab on your Pull Request.
2. Click on the pencil icon in the toolbar above the file content.
3. Make your changes as before, previewing until you're happy with them.
4. Under "Commit Changes" describe what this change does. For example, "Fix typo" or "Extend section on getting a company credit card".
5. Keep the selected option as "Commit directly". You don't need to create a new branch for every change.
6. Press "Commit changes".

### Checking for broken links

There is a [GitHub Actions Workflow that checks for broken links in the Handbook](https://github.com/madetech/handbook/actions/workflows/test.yml).

If you see "Some checks were not successful" above the "Squash and merge" button on the pull request overview page, click through to the failing check for the details of the broken links.

You will see something like this:

```console
> @madetech/handbook@1.0.0 test
> node build.js

 [dead(400)] ../../benefits/free_bananas.md in guides/welfare/breakfast_is_important.md
Broken links found
Error: Process completed with exit code 1.
```

This example is telling you that there is a link to the `benefits/free_bananas.md` page in the `guides/welfare/breakfast_is_important.md` page that does not work. It should be straightforward to find the link and correct or remove it as required

### Finalising the change

1. Get feedback from the wider company and address any feedback. Once you've had your Pull Request approved, you're ready to finalise your change.
2. On the "Conversation" tab of your Pull Request, click "Merge pull request".
3. Your new page will now be visible in the Handbook.

## Approval and merging

There are broadly two types of change to the handbook, each with a different approval flow.
If in doubt, default to the strictest method (Significant changes or additions) or ask for advice on Slack.

1. Significant changes or additions
2. Uncontroversial clarifications


### 1. Significant changes or additions

This includes changes to policies, changes to the way people are expected to work, changes that express a departure from a previous community norm, etc.

1. Open a pull request
2. Shout about the pull request in all relevant Slack channels. This should include announcements, but if it relates to a particular part of Made Tech, also in
the channels more relevant to those people.
3. Allow enough time for people to review and comment, remembering that they probably have busy schedules. One to two weeks is probably sensible.
4. Manage the conversation, seek approvals on GitHub, address feedback.
5. When it feels like something close to consensus is established, merge.

Consensus is subjective, and we can't make a rule that catches all the important ways it can look.
If you're unsure if you've got enough of it, reach out to the community on Slack.

### 2. Uncontroversial clarifications

This includes spelling mistakes, poorly worded sections, and writing something down that we all are doing anyway.

1. Open a pull request
2. Shout about it in relevant channels
3. Address feedback
4. Wait for an approval
5. Merge
