# main application
require_relative './router'

class App
  include Router

  def call(env)
    route(Rack::Request.new(env))
  rescue => ex
    [500, { "Content-Type" => "text/plain" }, ['Internal Server Error']]
  end
end
