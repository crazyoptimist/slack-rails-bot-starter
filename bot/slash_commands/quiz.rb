def quiz_message(question, channel_id)
  {
    channel: channel_id,
    "blocks": [
      {
        "type": 'section',
        "text": {
          "type": 'plain_text',
          "text": question,
          "emoji": true
        }
      },
      {
        "type": 'actions',
        "elements": [
          {
            "type": 'button',
            "text": {
              "type": 'plain_text',
              "text": 'Yes',
              "emoji": true
            },
            "value": 'reply_yes',
            "action_id": 'reply_yes'
          },
          {
            "type": 'button',
            "text": {
              "type": 'plain_text',
              "text": 'No',
              "emoji": true
            },
            "value": 'reply_no',
            "action_id": 'reply_no'
          }
        ]
      }
    ]
  }
end

SlackRubyBotServer::Events.configure do |config|
  config.on :command, '/quiz' do |command|
    p command
    team_id = command[:team_id]
    channel_id = command[:channel_id]
    command.logger.info "Someone started a quiz in channel #{channel_id}."
    question = 'Can octopuses change their color? :octopus:'
    team = Team.find_by(team_id:)
    slack_client = Slack::Web::Client.new(token: team.token)
    slack_client.chat_postMessage(quiz_message(question, channel_id))
    nil
  end
end
