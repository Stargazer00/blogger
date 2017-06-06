class ArticlesController < ApplicationController
  include ArticlesHelper
  
  def index
    @articles = Article.all
    
    @pages = Page.all
  end
  
  def show
    @show_current_article = Article.find(params[:id])
    @comment_from_show = Comment.new
    @comment_from_show.article_id = @show_current_article.id
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @create_article = Article.new(article_params)
    @create_article.save
    
    flash.notice = "Article '#{@create_article.title}' Created!"
    
    redirect_to article_path(@create_article)
  end
  
  def destroy
    @article_to_destroy = Article.find(params[:id])
    @article_to_destroy.destroy
    
    flash.notice = "Article '#{@article_to_destroy.title}' destroyed!"
    
    redirect_to articles_path
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article .find(params[:id])
    @article.update(article_params)
    
    flash.notice = "Article '#{@article.title}' Updated!"
    
    redirect_to article_path(@article)
  end
end
