class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post)
    end
  end

  private

  def comment_params
    params.permit(:content, :author_id, :post_id, :parent_id)
  end
end
