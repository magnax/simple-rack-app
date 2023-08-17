# main application
require_relative './router'

class App
  include Router

  def call(env)
    req = Rack::Request.new(env)
    route(req.path)
  end
end
