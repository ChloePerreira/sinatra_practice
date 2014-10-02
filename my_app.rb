require 'sinatra'
require './lib/post.rb'

class MyApp < Sinatra::Base

  before do #this will make stuff available in every route handler
    # e.g. @posts = Post.all
  end

  get "/" do
    @posts = Post.all # @ posts in same scope so available within home file!
    erb :home #links to recent posts
  end

  post "/" do
    #this is where you do logic to database
    puts params.inspect
    redirect to("/") #redirect makes it so it doesnt show in url, but it puts in server running area
  end

  get "/about" do
    erb :about_me
  end

  get "/contact" do
    erb :contact
  end

  get "/blog" do
    erb :blog
  end
  
  get "/resume" do
    erb :resume
  end

  get "/posts/:blogposts" do #by date mm_dd_yyi # can do posts/:date/:somethingelse
    erb "/posts/#{params[:blogposts]}".to_sym #dynamically find posts by date
    #("/posts/"params[:blogposts]).to_sym possibly work
  end
end
      
    
