require 'sinatra'

class MyApp < Sinatra::Base
  get "/" do
    erb :home #links to recent posts
  end

  get "/about" do
    erb :about_me
  end

  get "/posts/:blogposts" do #by date mm_dd_yy
    erb "/posts/#{params[:blogposts]}".to_sym #dynamically find posts by date
    #("/posts/"params[:blogposts]).to_sym possibly work
  end
end
      
    
