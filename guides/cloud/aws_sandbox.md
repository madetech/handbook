# Made Tech AWS Sandbox

## Overview

Made Tech have an AWS Sandbox account for individuals to use for personal development and testing. We run [AWS SSO](https://aws.amazon.com/single-sign-on/) to simplify and secure the IAM aspect of accessing this account.

## Usage Policy

This AWS account should only be used for temporary short lived test type projects and any resources are subject to being destroyed on a nightly or weekly basis. Individuals are responsible for cleaning up any resources they create and could be held liable for any ludicrous bills incurred by accidentally leaving giant Elasticsearch clusters running.

## Security

The AWS Sandbox account is restricted by several service control policies blocking creation of IAM users, and is locked down to three regions (eu-west-1, eu-west-2 and us-east-1)

## Access

1. Request access in the #cop-cloud Slack channel.
2. AWS SSO login credentials will be emailed to you.
3. Follow the instructions and setup MFA.
4. Login via [https://madetech.awsapps.com/start/](https://madetech.awsapps.com/start/)

## CLI Usage

Use [aws-vault](https://github.com/99designs/aws-vault) to run CLI commands.

Reasons for using this tool can be found [here](https://github.com/99designs/aws-vault#how-it-works).

1. Install [aws-vault](https://github.com/99designs/aws-vault#installing)
2. Add the following config to your `~/.aws/config` file.

```
 [profile madesso]
 sso_start_url=https://madetech.awsapps.com/start
 sso_region=eu-west-2
 sso_account_id=261219435789
 sso_role_name=SandboxAdmin
 output=json
 ```
 
 3. Test with `aws-vault exec madesso -- aws sts get-caller-identity`
 4. This pops open a browser where you need to login to create a session.
 5. Run any CLI based command in the same way e.g `aws-vault exec madesso -- terraform apply`
