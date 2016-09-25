class MessagesController < ApplicationController
  respond_to :json

  def index
    @messages = Message.all
    respond_with @messages, status: 200    
  end

  def create
    messages_params[:messages].each do |message|
      Message.create(article_id: message[:article_id], 
                     motion: message[:motion], 
                     latitud: message[:latitud], 
                     longitud: message[:longitud], 
                     radius: message[:radius], 
                     message_time: message[:message_time])
    end
    head :ok
  end

  private 

  def messages_params
    params.permit(messages: [:article_id, :motion, :latitud, :longitud, :radius, :message_time])
  end
end
