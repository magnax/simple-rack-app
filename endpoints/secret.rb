module Endpoints
  class Secret < Base
    def index
      render_response 'Welcome to secret place', headers: { "content-type" => "text/html" }
    end

    def create
      name = params['name'] || 'unknown person'
      render_response "Welcome to secret place #{name}"
    end
  end
end
