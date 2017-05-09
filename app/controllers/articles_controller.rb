class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @current_article = Article.find(params[:id])
  end
  
  def new
  end
end
