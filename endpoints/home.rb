module Endpoints
  class Home < Base
    def index
      render_response 'Welcome Home'
    end

    def home
      render_response 'Welcome Home'
    end
  end
end
