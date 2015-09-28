require "rack"
require "thin"

proc_app = -> (env) do
  [ 200, { "Content-Type" => "text/plain" }, ["Hello World"] ]
end

Rack::Handler::Thin.run proc_app
