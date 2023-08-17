module Router
  def route(path)
    if path == '/'
      [200, {}, ['Proper path!']]
    else
      [404, {}, ['Page not found']]
    end
  end
end
