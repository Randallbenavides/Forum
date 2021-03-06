class PostController < ApplicationController

 def index
   @post = Post.all
 end

 def show
   @post = Post.find(params[:id])
 end

 def new
   @post = Post.new
 end

 def create
  @post = Post.new(post_params)
 end

 private

 def post_params
  params.require(:post).permit(:title, :content)
 end

 def create
  @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
 end

end
