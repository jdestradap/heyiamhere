class ArticlesController < ApplicationController
  respond_to :json

  def new
  end

  def create
    @article = Article.new(params[:id])
    @article.save    
  end
  
  def show
    @article = Article.find(params[:id])
    respond_with @article, status: 200
  end
end
