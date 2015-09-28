require "rack"
require "thin"

class HelloWorld
  def call(env)
    [ 200, { "Content-Type" => "text/plain" }, ["Hello World"] ]
  end
end

Rack::Handler::Thin.run HelloWorld.new
