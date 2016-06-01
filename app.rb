require 'sinatra'
require 'pry'

get "/hello" do
  "hello world"
end

get "/hello/:name" do
  name = params[:name]
  "hello, #{name}"
end
