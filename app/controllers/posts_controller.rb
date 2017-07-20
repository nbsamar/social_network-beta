class PostsController < ApplicationController

  def new
  	@post = Post.new
  end
  # def create
  # 	@post = Post.new(params[:post])
  #   if @post.save
  #     session[:user_id] = @post.id
  #     flash[:notice] = "Post Created"
  #     redirect_to root_url
  #     else
  #     render :action => 'new'
  #   end
  # end
  def create
  @post = Post.new(params[:post])
 
  @article.save
  redirect_to @article
end

  def destroy
  end

  def show
  end
end
