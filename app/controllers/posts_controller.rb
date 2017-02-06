class PostsController < ApplicationController
  def index
  	@posts = Post.all.order("created_at desc")
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.create(title: params[:title], body: params[:body], user_id: params[:user])
    @posts = Post.all.order("created_at desc")
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.order("created_at desc")
  end

  def add
  end

  private

  	def post_params
  		params.require(:post).permit(:title, :body)
  	end
end
