SlackRubyBotServer::Events.configure do |config|
  config.on :action, 'view_submission' do |action|
    payload = action[:payload]
    team_id = payload['team']['id']
    username = payload['user']['username']
    trigger_id = payload['trigger_id']
    action.logger.info "User #{username} has submitted a demo modal form"
    team = Team.find_by(team_id:)
    slack_client = Slack::Web::Client.new(token: team.token)
    form_values = payload['view']['state']['values']
    p form_values
    nil
  end
end
