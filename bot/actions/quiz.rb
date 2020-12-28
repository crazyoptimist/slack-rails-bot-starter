SlackRubyBotServer::Events.configure do |config|
  config.on :action, 'interactive_message', 'do_quiz' do |action|
    payload = action[:payload]
    action_name = payload["actions"][0]["name"]
    channel_id = payload["channel"]["id"]
    team_id = payload["team"]["id"]
    action.logger.info "Action #{action_name} has been processed in channel #{channel_id}"
    team = Team.where(team_id: team_id).first
    slack_client = Slack::Web::Client.new(token: team.token)
    if action_name == 'reply_yes'
      slack_client.chat_postMessage(channel: channel_id, text: "Great! I also think so! :thumbsup:")
    elsif action_name == 'reply_no'
      slack_client.chat_postMessage(channel: channel_id, text: "Oops! Try to google it... :thumbsdown:")
    end
    # Do not send text message any more
    nil
  end
end
