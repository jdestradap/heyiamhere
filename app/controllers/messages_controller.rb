class MessagesController < ApplicationController
  respond_to :json

  def index
    @messages = Message.all
    respond_with @messages, status: 200    
  end

  def create
    @message = Message.new(message_params)    
    if @message.save
      respond_with @message, status: 200
    end
  end

  def message_params
    params.require(:message).permit(:motion, :article_id)
  end
end
