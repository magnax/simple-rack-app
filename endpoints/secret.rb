module Endpoints
  class Secret < Base
    def index
      [200, {}, ['Welcome to secret place']]
    end

    def create
      name = params['name'] || 'unknown person'
      [200, {}, ["Welcome to secret place #{name}"]]
    end
  end
end
