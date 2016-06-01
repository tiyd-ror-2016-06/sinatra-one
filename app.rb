require 'sinatra/base'
require 'pry'
require 'json'

class App < Sinatra::Base
  set :logging, true

  # 5.times do
  #   puts "hello"
  # end
  get "/hello" do
    "hello world"
  end

  get "/hello/:name" do
    name = params[:name]
    "hello, #{name}"
  end

  post "/comments" do
    begin
      body = JSON.parse request.body.read
      puts "Adding comment: #{body["body"]}"
    rescue JSON::ParserError
      status 422
      "Invalid JSON"
    end
  end
end

App.run!
