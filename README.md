# Slack Rails Bot Starter

## Setup

### Prerequisites(Recommended)

A domain(or a subdomain) is ready to host the application

### If you need to set up a new Slack app:

1. Create a new app [here](https://api.slack.com/apps?new_app=1)
2. Navigate to the **OAuth & Permissions** page and add the following **Bot Token Scopes**: 
- `users:read`
- `channels:read`
- `groups:read`
- `chat:write`
- `commands`
- `incoming-webhook`  
  **BASE_URL** stands for https://slackbot-hosted-domain.com hereafter.  
  Use this url for **Redirect** : `BASE_URL`
3. Activate **Interactivity & Shortcuts** and add this url: `BASE_URL/api/slack/action` 
4. Activate **Slash Commands** adding two slash commands `/ping`, `/quiz` and use this url: `BASE_URL/api/slack/command`
5. Activate **Event Subscriptions** subscribing to the event type `member_joined_channel` and add this url: `BASE_URL/api/slack/event`(This step needs the application to be running :D so you can skip this and come back a few mins later)
6. Navigate to the **App Home** page and toggle **Always Show My Bot as Online** (according to your reference)

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

Use this command to run the app on your server:
```bash
rails s -e production -b 0.0.0.0
```
Open the **BASE_URL** in your browser

## Deployment

Not limited to any specific platform

## License

**MIT**

## TODO

[x] Change the interactive message templates to the new ones  
[ ] Add Rubocop linting  
[ ] Add Specs  
[ ] Add TravisCI build flow  
[ ] Add Contribution Guide  

## Credit
This project is built on top of the [Slack Ruby Bot Server](https://github.com/slack-ruby/slack-ruby-bot-server) and [Slack Ruby Bot Server Events](https://github.com/slack-ruby/slack-ruby-bot-server-events)  
A big thanks to [Daniel Doubrovkine](https://github.com/dblock)'s great work.
