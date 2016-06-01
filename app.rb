require 'sinatra/base'
require 'pry'

class App < Sinatra::Base
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
end

App.run!
