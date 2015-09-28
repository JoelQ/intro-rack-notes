$LOAD_PATH << File.expand_path("..", __FILE__)

require "app"
require "middleware_logger"

use MiddlewareLogger
run App.new
