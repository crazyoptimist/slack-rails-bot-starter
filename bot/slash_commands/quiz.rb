def quiz_message(question, channel_id)
  {
    channel: channel_id,
    text: question,
    attachments: [
      {
        text: "",
        callback_id: "do_quiz",
        color: "#0045ff",
        attachment_type: "default",
        actions: [
          {
            name: "reply_yes",
            text: "Yes",
            type: "button",
            value: "reply_yes"
          },
          {
            name: "reply_no",
            text: "No",
            type: "button",
            value: "reply_no"
          }
        ]
      }
    ]
  }
end

SlackRubyBotServer::Events.configure do |config|
  config.on :command, '/quiz' do |command|
    team_id = command[:team_id]
    channel_id = command[:channel_id]
    command.logger.info "Someone is doing a quiz in channel #{channel_id}."
    question = "Can octopuses change their color?"
    team = Team.where(team_id: team_id).first
    slack_client = Slack::Web::Client.new(token: team.token)
    slack_client.chat_postMessage(quiz_message question, channel_id)
    nil
  end
end
