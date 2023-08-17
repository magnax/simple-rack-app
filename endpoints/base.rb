module Endpoints
  class Base
    attr_reader :params

    DEFAULT_HEADER = { "content-type" => "text/plain" }

    def initialize(params = nil)
      @params = params
    end

    def render_response(body, status: 200, headers: nil)
      [status, headers || DEFAULT_HEADER, [body]]
    end
  end
end
