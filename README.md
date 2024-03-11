# Slack Rails Bot Starter

This is a boilerplate for building [slack apps](https://api.slack.com/start) with Ruby on Rails.

The default branch `master` uses Mongoid as database adapter. For ActiveRecord, please check [`postgres`](https://github.com/crazyoptimist/slack-rails-bot-starter/tree/postgres) branch.

## Setup

### Prerequisites

- FQDN(Fully Qualified Domain Name) to host the app publicly. You can also choose to use [ngrok](https://ngrok.com/) instead.

### Create a New Slack App

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

### Install Dependencies and Create a `.env` File

```bash
bundle install
```

```bash
cp .env.example .env
```

Go to https://api.slack.com/apps, click on your application.

Checkout what's needed for `.env` from the **Basic Information** section.

## Run the App

```bash
rails s
```

Open **BASE_URL** in your browser.

## Learn More About Slack Apps with Ruby

- [Slack Ruby Bot Server](https://github.com/slack-ruby/slack-ruby-bot-server)
- [Slack Ruby Bot Server Events](https://github.com/slack-ruby/slack-ruby-bot-server-events)

## Deployment

Please follow the standard Ruby on Rails application deployment methods.

## Contributing

Thanks in advance for your contribution!

- Fork the project (https://docs.github.com/en/get-started/quickstart/fork-a-repo)
- Create your own branch with a meaningful name
- Install dependencies by running `bundle install`
- Make changes and push your commits
- Create a pull request
- Add a PR description explaining what it is for.

## Credit

This boilerplate uses [Slack Ruby Bot Server Events](https://github.com/slack-ruby/slack-ruby-bot-server-events).

Thanks to [Daniel Doubrovkine](https://github.com/dblock) and all the contributors.

Made with :heart: by [crazyoptimist](https://github.com/crazyoptimist)
