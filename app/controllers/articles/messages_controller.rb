class Articles::MessagesController < ApplicationController
  respond_to :json

  def index
    @messages = Article.find(params[:article_id]).messages
    respond_with @messages, status: 200
  end
end
