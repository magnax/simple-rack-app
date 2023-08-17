# main application
class App
  def call(env)
    req = Rack::Request.new(env)
    if req.path == '/'
      [200, {}, ['Proper path!']]
    else
      [404, {}, ['Page not found']]
    end
  end
end
