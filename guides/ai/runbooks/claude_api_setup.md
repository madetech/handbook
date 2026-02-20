# How to set up the Claude API for individual use

## Setup

### Acquire an API key
 
If you are using an organisation subscription then you will receive an invite to the organisation that you will need to claim via your organisation email address. It should be noted that to access the organisation workspace, you will need to visit https://platform.claude.com/ rather than the main Claude.ai website, if you do you will be asked to sign up for a subscription which is what we do not want to do. 

Once on the console, you will need to generate a key for your workspace, this is not under the API keys section, you will need to navigate to settings > workspaces > click on the three dots to the right of your assigned workspace. You can then select “Manage API Keys”, from here you can create a key.

### Installing Claude 

The full setup details can be found at https://code.claude.com/docs/en/setup but for the CLI which has been more than enough for me, “”curl -fsSL https://claude.ai/install.sh | bash”  from your terminal will surfice. I have also installed the plugin for Visual Studio Code but I’ve primarily been using the terminal, if you would like the visual studio plugin, it can be found at https://marketplace.visualstudio.com/items?itemName=dliedke.ClaudeCodeExtension and can be installed directly through Visual Studio Codes plugin manager.

### Local Setup

Unfortunately, following the instructions that are out in the wild for Claude (type ‘claude’ in your terminal) will not work for our organisation workspace API key, if you follow the Claude setup, you will find the three options that all navigate to a “Give Permissions” page which since we do not have a 121 subscription, will not work. 

So firstly, I would recommend setting up a new repository and clone it to your local machine. Your Claude configuration is going to be separate from any projects you work on. 

Secondly open your IDE and a terminal window. 

We are now going to have to manually create a few files. Create a .env file in your repo root. In that .env file create the following variable “ANTHROPIC_API_KEY=” and add your key as the value. 

Let’s also make sure we do not commit the key by creating a .gitignore file if it does not already exist and adding “.env”. 

Next we want to create a settings.json file under a new directory call .claude. ./.claude/settings.json. In this file add the following:- 
```
{
 "apiKeyHelper": "source .env && echo $ANTHROPIC_API_KEY"
}
```

You are now ready to run Claude, in your terminal window, type ‘claude’ again. You should be presented with a a chat input with no warning messages. Time to have some fun. 

### Where to start

Your first command after having a little play should be /init, if you have set up claude in an existing project, it’s going to scan the code base to understand what standards it should follow in a claude.md file.Walking into this you may have some concerns around the complexity of the process, not spending your credit to fast, ect, but the whole process is very conversational, follow the prompts and ask what you want. You can always cancel a command with ctrl+c. 

As my aim was to find out how good Claude was at starting a project from scratch, my first question was “Can you interview me on the initial requirements for a static web            
  application for the purposes of career skill tracking?” which was very successful in capturing my requirements, formulating a plan and then implementing the initial requirements step by step with me. Don;t be afraid to “vibe” at this stage, you’re learning!  

### Setting Up Claude for Your Organization: A Step-by-Step Guide

If your organization has provided you with a subscription to Claude, you'll need a slightly different setup process than a standard individual account, especially when dealing with the API and CLI. This guide will walk you through generating your API key and setting up your local environment for organizational use.

#### Acquiring Your API Key

For organization subscriptions, you will receive an invitation to claim via your work email address. Crucially, you must use the organization console, not the main Claude website:
Visit the Claude console at platform.claude.com. If you go to the main Claude.ai site, you might be incorrectly prompted to sign up for a subscription, which is not what you want.
Once logged into the console, your key is not generated under the main API keys section. You will need to
Navigate to Settings > Workspaces.
Click on the three dots to the right of your assigned workspace.
Select “Manage API Keys”.
From here, you can create and generate your key.

#### Local Setup for Organization API Keys

The standard claude setup instructions donot work directly with an organization API key, as the usual setup flow will incorrectly navigate you to an in browser  “Give Permissions” page. To work around this, you’ll need to set up your environment variables manually.
Create a dedicated repository and clone it to your local machine. This repository will hold your Claude configuration separate from any project code.
Open your IDE and a terminal window within this new repository.
Create a .env file in the root of your repository.
Inside the .env file, create the following variable and add your key as the value:
ANTHROPIC_API_KEY=your_key_here
Prevent key commitment: Create or update your .gitignore file and add the line .env to ensure your API key is never accidentally committed to version control.
Create a configuration file: Create a new directory named .claude and place a settings.json file inside it, resulting in the path: ./.claude/settings.json.
Add the following content to your settings.json file. This tells the CLI how to correctly retrieve your API key from the environment variable:
```
{
  "apiKeyHelper": "source .env && echo $ANTHROPIC_API_KEY"
}
```

You are now ready to run Claude. In your terminal window, type claude. You should be presented with a chat input without any warning messages if the above has been successful. 

#### Starting Your Project

After a little playtime, your first official command should be:
/init
If you’ve set up Claude in an existing project, the /init command will scan the codebase and generate a claude.md file to establish the coding standards it should follow.

The entire process is highly conversational. Don't worry about complexity or credit consumption; simply follow the prompts and ask for what you need. Remember, you can always cancel any command by pressing Ctrl+C or Escape.

To begin a new project, you might start with a question like: “Can you interview me on the initial requirements for a static web application for the purposes of career skill tracking?” This conversational approach is highly effective for gathering requirements, formulating a plan, and implementing initial steps. Dive in and start learning!

