class App
  def call(env)
    sleep 3
    [ 200, { "Content-Type" => "text/plain" }, ["Hello World!\n"] ]
  end
end
