# Slack Rails Bot Starter

## Setup

### Prerequisites

- A domain(or a subdomain) is ready to host the application

### If you need to set up a new Slack app:

1. Create an app at https://api.slack.com/apps?new_classic_app=1
2. Navigate to the **OAuth & Permissions** page and add the following **bot** scopes:

- `channels:read` (Read messages)
- `chat:write:bot` (to send messages)
- `commands` (To Install via slash commands)
- `groups:read` (View information in channels and groups)
- `im:write` (to open a DM channel between your bot and a user)

  **BASE_URL** stands for https://slackbot-hosted-domain.com hereafter.  
  Use this url for **Redirect** : `BASE_URL`  
3. Activate **Interactivity & Shortcuts** and add this url: `BASE_URL/api/slack/action`  
4. Activate **Slash Commands** adding a slash command `/install` and add this url: `BASE_URL/api/slack/command`  
5. Activate **Event Subscriptions** subscribing to the event type `member_joined_channel` and add this url: `BASE_URL/api/slack/event`  
6. Add a **bot user** with a username and check in **always online**

### Clone the repository and install dependencies

```bash
bundle install
```

### Prepare .env file

```bash
cp .env.example .env
```
Go to https://api.slack.com/apps and click your application.  
Grab the infomation needed for .env file from **Basic Information** section.

## Run the application

Open your terminal and run this command:
```bash
rails s
```
Open your browser on `localhost:3000`

## Deployment

- Available options
  * Heroku
  * Using Docker
  * Or more ...

## LICENSE

**MIT**

## THANKS

This project is built on top of the [Slack Ruby Bot Server](https://github.com/slack-ruby/slack-ruby-bot-server) and [Slack Ruby Bot Server Events](https://github.com/slack-ruby/slack-ruby-bot-server-events)  

A big thanks to [Daniel Doubrovkine](https://github.com/dblock)'s great work.  
