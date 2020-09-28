# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

# Requires Slack Bot Actions

require_relative 'bot/commands'
require_relative 'bot/slash_commands'

run Rails.application

SlackRubyBotServer::App.instance.prepare!
SlackRubyBotServer::Service.start!
