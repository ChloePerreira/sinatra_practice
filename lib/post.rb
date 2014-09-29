class Post
  # Access posts, files within views/posts
  # attributes: title (show as a link), url, filename, content (maybe)

  # Read my list of post files
  # Create an array of post objects with attributes set
  # Post.all =? [post, post]

  attr_accessor :title, :url

  def initialize(array) #add a date attribute @date and then change @url
    @title = array[-1].split(".")[0]  
    @url   = "posts/#{@title}" #interpolate title, leave out views (this is like the url href)
  end

  def self.all # class method that creates instances
    Dir.glob("views/posts/*").collect do |filepath| # use collect to return result of each itrtn
      a = filepath.split("/") # yields ["posts", "views", "blog.erb"]
      Post.new(a) #or new or self.new since in class method
    end
  end

  def print_date(title)
    array = title.gsub(/_/, ' ').split(' ').reverse # y m d
    year = array[0].to_i + 2000
    month = array[2].to_i
    case month 
      when 9
        month = "September"
      when 10
        month = "October"
    end
    day = array[1]
    "#{month} #{day}, #{year}"
  end


  def self.most_recent(n)
  end
  
    
    
end
