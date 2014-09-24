# my_app.rb
require 'sinatra'

class MyApp < Sinatra::Base #inherit from Base class within Sinatra module

  # get takes a string argument and defines routes
  get "/" do # e.g. "/" is homepage "/news", what happens in block is what happens when someone goes to route
    erb :index # give symbol,a method given to you by sinatra - looks for a file and reads it (e.g. html file)
  end

  get "/about-me" do
    "Blargh"
  end

end
