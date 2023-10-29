# Slack Rails Bot Starter

This is a boilerplate for building [slack apps](https://api.slack.com/start) with Ruby on Rails.

The default branch `master` uses Mongoid as database adapter. For ActiveRecord, please check [`postgres`](https://github.com/crazyoptimist/slack-rails-bot-starter/tree/postgres) branch.

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

Open **BASE_URL** in your browser.

## Deployment

Please follow the standard Ruby on Rails application deployment methods.

## License

MIT License

Copyright (c) 2023 crazyoptimist

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Contributing

- Fork the project (https://docs.github.com/en/get-started/quickstart/fork-a-repo)
- Create a topic branch
- Install dependencies by running `bundle install`
- Make changes and push your commits
- Create a pull request
- Add a PR description explaining what is done and why

## TODO

- [x] Add Rubocop linting
- [ ] Add Specs
- [x] Add CI/CD with Github Actions
- [x] Add Contribution Guide

## Credit

This boilerplate was inspired by [Slack Ruby Bot Server](https://github.com/slack-ruby/slack-ruby-bot-server) and [Slack Ruby Bot Server Events](https://github.com/slack-ruby/slack-ruby-bot-server-events).

Thanks to [Daniel Doubrovkine](https://github.com/dblock) and all the contributors.

Made with :heart: by [crazyoptimist](https://github.com/crazyoptimist) :dolphin:
