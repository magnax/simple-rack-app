Dir.glob('endpoints/*.rb').sort.each do |file|
  require_relative "../#{file}"
end
require_relative './router_definitions'

module Router
  include Router::Definitions

  def route(request)
    path = request.path
    method = request.request_method
    params = request.params
    return error_404 if path.nil? || ENDPOINTS[path].nil?

    endpoint = Object.const_get "Endpoints::#{ENDPOINTS[path][:endpoint].capitalize}"
    action = ENDPOINTS[path][:methods][method.downcase.to_sym]
    return error_404 if action.nil?

    endpoint.new(params).send action
  end

  private

  def error_404
    [404, {}, ['Page not found']]
  end
end
