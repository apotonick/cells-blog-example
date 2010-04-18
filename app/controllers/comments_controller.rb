class CommentsController < ApplicationController
  before_filter :login_required
  before_filter :find_post
  
  def new
    @comment = @post.comments.build
  end
  
  def create
    @comment = @post.comments.build(params[:comment])
    if @comment.save
      flash[:notice] = "Comment has been created."
      redirect_to @post
    else
      flash[:notice] = "Comment has not been created."
      render :action => "new"
    end
  end
  
  private
    def find_post
      @post = Post.find(params[:post_id])
    end
  
end
