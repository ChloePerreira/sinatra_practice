class Post
  # Access posts, files within views/posts
  # attributes: title (show as a link), url, filename, content (maybe)

  # Read my list of post files
  # Create an array of post objects with attributes set
  # Post.all =? [post, post]

  def initialize(array)
    
    
  end

  def self.all # class method that creates instances
    Dir.glob("views/posts*").collect do |filepath| # use collect to return result of each itrtn
      a = filepath.split("/")
      Post.new(a) #or new or self.new since in class method
  end
end
