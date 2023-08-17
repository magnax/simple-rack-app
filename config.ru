# config file for rack app

require_relative 'app/app.rb'
require 'rack/auth'

app = Rack::Builder.new do
  map '/secret' do
    use Rack::Auth::Basic do |username, password|
      username = ENV['BASIC_AUTH_USERNAME'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end

  map '/' do end;
  
  run App.new
end 

run app
