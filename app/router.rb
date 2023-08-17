Dir.glob('endpoints/*.rb').each do |file|
  require_relative "../#{file}"
end

module Router
  def route(path)
    case path
    when '/'
      Endpoints::Home.new.call
    when '/secret'
      Endpoints::Secret.new.call
    else
      [404, {}, ['Page not found']]
    end
  end
end
