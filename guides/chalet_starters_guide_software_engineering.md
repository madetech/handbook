

# Chalet: A Starter Guide for Software Engineers

Are you **new**? Skip to our "[**New Joiner**](#new-joiner)" steps, then come back to the rest of this

Welcome to the **Chalet**\! Whether you're new to **Made Tech** or joined when the whole company could fit in a sedan, you may be wondering what to do with yourself.

Before going any further, make sure you're in the [\#chalet Slack channel](https://madetechteam.slack.com/archives/C03F23K2RL0).

Here is a list of things we did in our time at the Chalet: 

* [AI Policy](#ai-policy)  
* [Little Projects](#little-projects)
* [Test Driven Development](#tdd)  
* [Katas](#katas)  
* [Certification/training](#amazonazure-certification)

## 

## **What is Chalet Time?**

Chalet time is when people are not on client work. For example...

* A two week gap between someone finishing their apprenticeship and going onto a client project.  
* A month between a new starter joining the company, getting Security Clearance (SC), and their first client project.  
* A lead designer having three days between their current client project and the next.


Occasional chalet time is a common part of a business like ours, as client work isn’t always going to perfectly match our skills and availability. It's a good time to focus on other activities.

You can also reach out to your people manager or buddy for more guidance on how you should spend your chalet time and how long you should expect to be there. For example, if you already have SC, you could offer to support other projects on small issues or pair with other programmers.

This time should be recorded as ‘Bench/Chalet’ in timesheets, unless doing something more specific like ‘Hiring’ or ‘R\&D’

## **AI Policy**

Please read over our AI [docs](https://github.com/madetech/handbook/blob/main/guides/ai/start_here.md) to understand how Made Tech is currently using it as a tool. From here, there are further links going over best practices, security measures, and other bits and pieces.

Across projects, clients will have different policies on AI usage. Make sure to ask your team what the policy is for you.

## **Little Projects**

This is one of the most fun ways to spend your time at the Chalet, and certainly the one with the most freedom. Little projects can come in any form, can be open source, and in any tech stack. 

However, it is recommended that you keep the scope small, extensible, and somewhat disposable. This is due to the fact that you could be pulled out of the Chalet at any moment, and realistically you shouldn't be spending too long a time there.

That being said, here are some things we’ve done with our time in the Chalet, if you’re looking for inspiration:

* Use Docker Compose to create a few services (each in a different language like Python or GoLang) and get them to talk to each other via a Redis cache (or a RabbitMQ), with the focus on using Grafana to display metrics as they put/get items to the cache/queue and display a beautiful todo list   
    
* Create an API and attach it to a Lambda (in AWS) and get it to allow you to call it from anywhere. For examples of what kind of API you could write: an API to guess what an acronym means, an API to tell your daily horoscope, an API to recommend daily recipes. Write it in any language, and it won’t cost a penny, as Lambdas are free for development  
  * You may want to investigate Madetech’s AWS sandbox account: [Details here](https://github.com/madetech/handbook/blob/794d3443d7f2e81bd3b2124a34ff02fee69757ce/guides/cloud/aws_sandbox.md)

* You know that annoying niggle you have about that thing? That coding library or that task? What if you fixed it? Get involved in open-source, develop something you would like to see in the world, or give back to something you’ve utilised before.   
    
* Play with AI tooling such as Claude, build Agentic Agents with Gemini Gems. Reach out in different COP channels for recommendations

If you need help with something for your project, do reach out in the \#chalet channel and see if anyone can help guide you. Or try \#cop-engineering. And don’t worry if your question is stupid, just means there’s more people who can help answer and feel good about it

There’s also focus time sessions that you can join, links in \#x-focus

## **Amazon/Azure Certification**

You could consider getting some certificates. This is a generally boring process, but you do get a fancy PDF that says congrats after it, and what’s more valuable than that\!

You can follow our guide here: [https://github.com/madetech/handbook/tree/main/guides/cloud](https://github.com/madetech/handbook/tree/main/guides/cloud) 

Many people recommended this Udemy course, which you can buy with your Learning Budget: [https://www.udemy.com/course/aws-certified-developer-associate-dva-c01/](https://www.udemy.com/course/aws-certified-developer-associate-dva-c01/)

Of course, there are different levels of certificates. Go for one that matches your experience.


## **TDD**

Here at Made Tech, we prioritise Test Driven Development in all our work.  
Starting with our docs [here](https://learn.madetech.com/technology/core-skills/tdd/%20) you can read more about our approach, while digging further into core aspects and fundamentals.  
You can prove your TDD might by gaining [Badges](https://learn.madetech.com/technology/core-skills/tdd/#Giraffe:~:text=Triangulation-,Badges,-Any%20Made%20Tech) and becoming a Giraffe, Wolf, and finally Dragon. 

Here are some resources about learning and gaining these badges:

* Giraffe badge: [https://drive.google.com/file/d/1u\_NVorEZ4DGRb0iXmoMhuOn7I208o9r4/view?usp=drive\_link](https://drive.google.com/file/d/1u_NVorEZ4DGRb0iXmoMhuOn7I208o9r4/view?usp=drive_link)  
* Lessons from Giraffe assessments video: [https://drive.google.com/file/d/1nEaE3mQCspM6rsq7PwwOMxv66lTl365l/view?usp=drive\_link](https://drive.google.com/file/d/1nEaE3mQCspM6rsq7PwwOMxv66lTl365l/view?usp=drive_link)  
* Slides, have helpful links to other resources and previous talks: [https://docs.google.com/presentation/d/1to2ErZ9kMEOFVPf9pnTXUZmpObBnkxYOSStswYmAWa8/edit?usp=sharing](https://docs.google.com/presentation/d/1to2ErZ9kMEOFVPf9pnTXUZmpObBnkxYOSStswYmAWa8/edit?usp=sharing)

From there, you may end up at Martin Fowler’s website reading about [TestDoubles](https://martinfowler.com/bliki/TestDouble.html) and [Mocks](https://martinfowler.com/articles/mocksArentStubs.html) which are important bits to grasp in line with TDD.

Here are some extra docs about [Test Smells](https://blog.xnsio.com/2009/02/01/smells-in-test-that-indicate-design-problems/) to go through at a high level.

While **Uncle Bob** will always remind us to keep [trying](https://www.youtube.com/watch?v=tL89VP3nuwc) and [trying](https://blog.cleancoder.com/uncle-bob/2014/12/17/TheCyclesOfTDD.html) with TDD \- as it is a way of working/skill to learn and build up. You probably won’t grasp it in one sitting, and perhaps not even on your own \- paired programming is always encouraged at Made Tech.

## **Katas**

Once you’ve begun to get your head around TDD, you can practise with our [Katas](https://learn.madetech.com/technology/katas/).  


A great kata to finish off with for TDD is one of the [Gilded Rose](https://github.com/emilybache/GildedRose-Refactoring-Kata) Katas\!  
Pick a language you know, but not very well and see if you can add the requested feature to this mighty code base

Running kata sessions is also a great way to practice mentoring and test your own skills. Why not see if anyone in the Chalet would be interested in working with you? If you’re not looking to lead, katas can still provide great opportunities to practice pair programming with TDD.

## **New Joiner**

First, **Welcome**\! Hope you have a wonderful time with us. Here’s a quick refresher on how we utilise Slack: 

Any channel that starts with \``x-`\` is a "fun" channel, like x-animal-anarchy, x-games or x-lgbtqiaplus. 

Any channel starting with `cop-` are **C**ommunity **O**f **P**ractice channels, intended as the public-facing forum to discuss your section of the company. Feel free to join any of these that you’re interested in (you’ll be shocked to know there’s a very large overlap between \#cop-data and \#cop-engineering)

And if you’ve not used Slack before, when learning a new channel, it’s best to check the top tabs for information, specifically Pins and Bookmarks.

You should also set some details in your bio like Profile, like job role, name pronunciation, and pronouns. 

To help grow your familiarity, here are some channels you can join (or may have already joined and are unsure of the format)

[\#guild-systems-design :](https://madetechteam.slack.com/archives/C06LVRLBY3E)   
This channel is about building your system design knowledge, primarily through a weekly meeting on Monday to test your knowledge through various challenges. Feel free to come along and try your best at the challenge and expand the scope of your experiences. Why not try hosting a session and create a challenge to intrigue and invigorate others? New hosts are always welcome\! Just ask in the channel if you want more guidance.

\#cop-{your-cop}:  
We’ve already spoken about this, but the one for your service line is very useful to join. Like the guild system they have a weekly (or so) session that you can join and host as well, very useful for getting to know your colleagues.

[\#guild-ai](https://madetechteam.slack.com/archives/C08HKGH9VMY):  
This channel is about discussing AI in all aspects. Here you will find discussions about the latest news and advances, along with conversations about how people are using AI to solve real problems.

[\#eng-bookclub](https://madetechteam.slack.com/archives/C03CP6DNKQU):  
Join here to participate in group discussions on different topics chosen from different books. It is currently not very active, but feel free to ask what people are currently reading/interested in.

[\#x-dev-conferences](https://madetechteam.slack.com/archives/C01RJ5Z2R25):   
Conferences that devs are going to. You can use a learning day and see what’s going on in our industry with fellow Made Techers.

[\#tdd-core-skill:](https://madetechteam.slack.com/archives/CBXN91G5D)   
The place to grow your TDD skills. There’s a particular focus on gaining your [‘badges’](https://learn.madetech.com/technology/core-skills/tdd/#Giraffe:~:text=Triangulation-,Badges,-Any%20Made%20Tech) \- animal-themed badges that represent where you are in your TDD journey. Worth trying to get one while you have some time, and feel free to chuck any questions you have about TDD in here.

[\#data-and-ai-chalet](https://madetechteam.slack.com/archives/C08S1CM0FHA)  
If you're a member of the data service line, jump in here and see what your colleagues are doing\! Maybe jump in even if you’re not, it’s always nice to participate. 

You can also set up your Jetbrains IDE with Made Tech’s license [using the instructions here](https://askmadetech.zendesk.com/hc/en-gb/articles/23931884197661-How-do-I-get-a-Jetbrains-or-IntelliJ-licence)
