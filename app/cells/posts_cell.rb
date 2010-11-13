class PostsCell < Cell::Rails

  def display
    @tag    = params[:tag]
    @posts  = @tag ? Post.tagged_with(@tag) : Post.recent
    render
  end
  
  def tag_cloud
    @tags = Post.tag_counts_on(:tags)
    render
  end
end
