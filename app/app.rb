# main application
require_relative './router'

class App
  include Router

  def call(env)
    route(Rack::Request.new(env))
  rescue => ex
    if ENV['DEBUG'] && %w(y yes t true).include?(ENV['DEBUG'].downcase)
      response = "<h2>#{ex.message}</h2>"
      response += ex.backtrace.join('<br />')
      [500, { "content-type" => "text/html" }, [response]]
    else
      [500, { "content-type" => "text/plain" }, ['Internal Server Error']]
    end
  end
end
