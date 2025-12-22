# Made Tech AWS Sandbox

## Overview

The Made Tech AWS Sandbox accounts are primarily used for individuals' personal development and testing. We run [AWS SSO](https://aws.amazon.com/single-sign-on/) to simplify and secure the IAM aspect of accessing this account.

There are 2 accounts you can use:
- [Playground account](#playground-account)
- [Devops Pairing Interviews Account](#devops-pairing-interviews-account)

## Playground account

### Usage Policy

This AWS account should only be used for temporary short lived test type projects and resources are destroyed every Friday evening.

The Terraform and config for this cleanup task lives in this [aws-sandbox](https://github.com/madetech/aws-sandbox) GitHub repo.

### Security

The AWS Sandbox account is restricted by several service control policies blocking creation of IAM users, and is locked down to three regions (eu-west-1, eu-west-2 and us-east-1)

### Access

1. Request for a new user account in the #cop-cloud Slack channel in the `SandboxUsers` group.
2. AWS SSO login credentials will be emailed to you.
3. Follow the instructions and setup MFA.
4. Login via [https://madetech.awsapps.com/start/](https://madetech.awsapps.com/start/)

### CLI Usage

1. Add the following config to your `~/.aws/config` file.
    ```
    [profile mt-playground]
    sso_start_url=https://madetech.awsapps.com/start
    sso_region=eu-west-2
    sso_account_id=261219435789
    sso_role_name=SandboxUser
    output=json
    ```
 
 2. Test with `aws sso login --profile mt-playground`
 3. This pops open a browser where you need to login to create a session.
 4. Once completed to avoid having to use the profile flag again run `export AWS_PROFILE=mt-playground`. You can set this in your .zshrc file to avoid having to run this command in each new terminal session.
 5. Run any CLI based command in the same way e.g `terraform apply`

## Devops Pairing Interviews Account

This is a separate account for use in devops pairing exercises. 

This account differs in two ways from the main sandbox:
- It allows the creation of iam users. 
- It **deletes all resources inside it every day!**

### Access
Only employees that are conducting devops pairing interviews will be given access

1. Request your user account to be added to the `DevopsPairingInterviewer` group in the #cop-cloud Slack channel.

### CLI Usage

1. Add the following config to your `~/.aws/config` file.

```
 [profile mt-devops]
 sso_start_url=https://madetech.awsapps.com/start
 sso_region=eu-west-2
 sso_account_id=612473995106
 sso_role_name=SandboxUser
 output=json
 ```

2. To run commands in this environment run `export AWS_PROFILE=mt-devops && aws sso login`

## Admin actions
This section is for SSO administrators (i.e. people in the `@sandbox-admins` group on slack)

### Adding new users
For when a user has requested to be added to the AWS sandbox
- Login to sso https://madetech.awsapps.com/start#/
- Click on: `aws account` > `Made Tech` > `Management console`
- Now go to https://eu-west-2.console.aws.amazon.com/singlesignon/identity/home?region=eu-west-2#!/users
- On the top right click `add user`
- Fill in their details (use the part before the @ in their email as username)
- Add them to the "SandboxUsers" group
- They should now get a email invite to join (valid for the next 7 days)


