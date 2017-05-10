class CommentsController < ApplicationController
  def create
    @create_comment = Comment.new(comment_params)
    @create_comment.article_id = params[:article_id]
    
    @create_comment.save
    
    redirect_to article_path(@create_comment.article)
  end
  
  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
  
end
