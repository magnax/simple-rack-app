# main application
require_relative './router'

class App
  include Router

  def call(env)
    route(Rack::Request.new(env))
  rescue => ex
    [500, {}, ['Internal Server Error']]
  end
end
