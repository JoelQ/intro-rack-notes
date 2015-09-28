require "rack"
require "thin"

class Env
  def call(env)
    [ 200, { "Content-Type" => "text/plain" }, [env.keys.sort] ]
  end
end

Rack::Handler::Thin.run Env.new
