class CommentsController < ApplicationController
  include ActiveModel::MassAssignmentSecurity

  attr_protected :commenter, :body
  load_and_authorize_resource
  
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(params[:comment])
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

end
