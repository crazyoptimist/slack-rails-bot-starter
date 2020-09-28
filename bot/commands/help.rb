class Help < SlackRubyBot::Commands::Base
  HELP = <<~EOS
    ```
    Slack Rails Bot Starter
    Commands
    --------
    help               - Get this helpful message
    Slash Commands
    --------
    /ping              - Responds with a simple 'pong' message
    /quiz              - Do a simple quiz using interactive message (test action)
    ```
  EOS
  def self.call(client, data, _match)
    client.say(channel: data.channel, text: HELP)
    logger.info "HELP: #{client.owner}, user=#{data.user}"
  end
end
