$LOAD_PATH << File.expand_path("..", __FILE__)

require "rack"
require "thin"
require "app"
require "middleware_logger"

Rack::Handler::Thin.run MiddlewareLogger.new(App.new)
