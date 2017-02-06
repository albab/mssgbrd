class CommentsController < ApplicationController
  def index
  	@comments = Comment.all.order("created_at desc")
  end

  def new
  	@comment = Comment.new
  end

  def create
  	@comment = Comment.create(body: params[:comment_text], user_id: current_user.id, post_id: params[:post])
    @comments = @comment.post.comments.order("created_at desc")
  end

  private
  	def comment_params
  		params.require(:comment).permit(:body)
  	end
end