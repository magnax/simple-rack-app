module Endpoints
  class Home < Base
    def index
      [200, {}, ['Welcome Home']]
    end

    def home
      [200, {}, ['Welcome Home']]
    end
  end
end
