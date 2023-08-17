module Router
  module Definitions
    ENDPOINTS = {
      '/' => {
        endpoint: 'home',
        methods: {
          get: :index,
        }
      },
      '/home' => {
        endpoint: 'home',
        methods: {
          get: :home,
          post: :create,
        }
      },
      '/secret' => {
        endpoint: 'secret',
        methods: {
          get: :index,
          post: :create,
        }
      }
    }
  end
end
