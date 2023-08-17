require_relative '../app/app'
require 'rack/test'

RSpec.describe App do
  include Rack::Test::Methods

  def app
    App.new
  end

  it 'responds for index page' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Welcome Home')
  end

  it 'responds for secret page' do
    get '/secret'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Welcome to secret place')
  end

  it 'responds 404 for unexisting page' do
    get '/dummy_path'
    expect(last_response).to_not be_ok
    expect(last_response.body).to include('Page not found')
  end
end
