class MiddlewareLogger
  def initialize(app)
    @app = app
  end

  def call(env)
    before = Time.now.to_i
    status, headers, body = @app.call(env)
    after = Time.now.to_i
    difference = "Request took #{after - before} seconds"

    [status, headers, body << difference]
  end
end
