class ArticlesController < ApplicationController
  respond_to :json

  def create
    @user = User.find(article_params[:user_id])
    @article = @user.articles.new(name: article_params[:name],
                                  description: article_params[:description])

    @article.locations.new(tracking: article_params[:tracking],
                           start_date: article_params[:start_date],
                           end_date: article_params[:end_date],
                           latitud: article_params[:latitud],
                           longitud: article_params[:longitud],
                           max_radius_alert: article_params[:max_radius_alert])
    if @article.save
      respond_with @article, status: 200
    else
      respond_with @article.error, status: 500
    end
  end
  
  def show
    @article = Article.find(params[:id])
    respond_with @article, status: 200
  end

  private
  def article_params
    params.permit(:article, :name, :description, :user_id, :tracking, :start_date, :end_date, :latitud, :longitud, :max_radius_alert)  
  end
end
