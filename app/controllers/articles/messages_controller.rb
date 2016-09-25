class Articles::MessagesController < ApplicationController
  respond_to :json

  def index
    print "hellooooo"
    @message = Article.find(params[:article_id]).messages.last
    print "hi"
    puts @message.inspect
    print "hi 2"
    respond_with @message, status: 200
  end
end
