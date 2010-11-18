class PostsController < ApplicationController
  include Apotomo::Rails::ControllerMethods
  
  has_widgets do |root|
    root << widget(:posts_widget, 'sidebar-posts')
  end
  
  
  def index
    @posts = Post.recent
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "Post has been created."
      redirect_to @post
    else
      flash[:notice] = "Post has not been created."
      render :action => "new"
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  
end
