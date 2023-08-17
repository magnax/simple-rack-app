module Endpoints
  class Home
    def call
      [200, {}, ['Welcome Home']]
    end
  end
end
