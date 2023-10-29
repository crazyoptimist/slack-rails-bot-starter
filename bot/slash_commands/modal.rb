def modal_payload(trigger_id)
  {
    trigger_id:,
    view: {
      type: 'modal',
      title: {
        type: 'plain_text',
        text: 'Demo Modal Form',
        emoji: true
      },
      submit: {
        type: 'plain_text',
        text: 'Submit',
        emoji: true
      },
      close: {
        type: 'plain_text',
        text: 'Cancel',
        emoji: true
      },
      blocks: [
        {
          type: 'input',
          element: {
            type: 'plain_text_input',
            action_id: 'sl_input',
            placeholder: {
              type: 'plain_text',
              text: 'Placeholder text for single-line input'
            }
          },
          label: {
            type: 'plain_text',
            text: 'Subject'
          },
          hint: {
            type: 'plain_text',
            text: 'Short description or subject line'
          }
        },
        {
          type: 'input',
          element: {
            type: 'plain_text_input',
            action_id: 'ml_input',
            multiline: true,
            placeholder: {
              type: 'plain_text',
              text: 'Placeholder text for multi-line input'
            }
          },
          label: {
            type: 'plain_text',
            text: 'Details'
          },
          hint: {
            type: 'plain_text',
            text: 'Long description'
          }
        }
      ]
    }
  }
end

SlackRubyBotServer::Events.configure do |config|
  config.on :command, '/modal' do |command|
    p command
    team_id = command[:team_id]
    trigger_id = command[:trigger_id]
    command.logger.info "Opening a modal with trigger_id:  #{trigger_id}."
    team = Team.find_by(team_id:)
    slack_client = Slack::Web::Client.new(token: team.token)
    slack_client.views_open(modal_payload(trigger_id))
    nil
  end
end
