# Slack Rails Bot Starter

## Setup

#### Prerequisites

- FQDN(Fully Qualified Domain Name) to host the app publicly. You can also choose to use [ngrok](https://ngrok.com/) instead.

#### Create a new slack app

1. Create a new app [here](https://api.slack.com/apps?new_app=1)
2. Navigate to the **OAuth & Permissions** page and add the following **Bot Token Scopes**:

- `users:read`
- `channels:read`
- `groups:read`
- `chat:write`
- `commands`
- `incoming-webhook`  
  **BASE_URL** stands for https://slackbot-hosted-domain.com hereafter.  
  Use **BASE_URL** for **Redirect**.

3. Activate **Interactivity & Shortcuts** and add this url: `BASE_URL/api/slack/action`
4. Activate **Slash Commands** adding two slash commands `/ping`, `/quiz` and use this url: `BASE_URL/api/slack/command`
5. Activate **Event Subscriptions** subscribing to the event type `member_joined_channel` and add this url: `BASE_URL/api/slack/event`(This step needs the application to be running :D so you can skip this and come back a few mins later)
6. Navigate to the **App Home** page and toggle **Always Show My Bot as Online** (according to your reference)

#### Install dependencies and prepare `.env` file

```bash
bundle install
```

```bash
cp .env.example .env
```

Go to https://api.slack.com/apps, click on your application.  
Grab the infomations for `.env` from **Basic Information** section.

## Run the app

```bash
rails s
```

Open **BASE_URL** in your browser

## Deployment

Follow the standard Rails app deployment methods

## License

**MIT**

## TODO

[ ] Add Rubocop linting  
[ ] Add Specs  
[ ] Add TravisCI build flow  
[ ] Add Contribution Guide

## Credit

This boilerplate is built on top of [Slack Ruby Bot Server](https://github.com/slack-ruby/slack-ruby-bot-server) and [Slack Ruby Bot Server Events](https://github.com/slack-ruby/slack-ruby-bot-server-events)  
Thanks to [Daniel Doubrovkine](https://github.com/dblock) for his great work.

Made with :heart: by [crazyoptimist](https://github.com/crazyoptimist) :dolphin:
