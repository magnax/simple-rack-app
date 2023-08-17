module Endpoints
  class Secret
    def call
      [200, {}, ['Welcome to secret place']]
    end
  end
end
