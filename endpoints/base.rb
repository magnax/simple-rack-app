module Endpoints
  class Base
    attr_reader :params

    def initialize(params = nil)
      @params = params
    end
  end
end
