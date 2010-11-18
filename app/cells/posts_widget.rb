class PostsWidget < Apotomo::Widget
  responds_to_event :tagClicked, :with => :filter
  
  def display
    @tag    = param(:tag)
    @posts  = @tag ? Post.tagged_with(@tag) : Post.recent
    render
  end
  
  def filter
    replace :state => :display
  end
  
  def tag_cloud
    @tags = Post.tag_counts_on(:tags)
    render
  end
end
