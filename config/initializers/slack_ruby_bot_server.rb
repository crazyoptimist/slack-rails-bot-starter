SlackRubyBotServer.configure do |config|
  config.view_paths << File.expand_path(File.join(__dir__, '../../public'))
end
