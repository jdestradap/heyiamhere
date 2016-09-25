class Message < ApplicationRecord
  belongs_to :article

  def self.bulk_messages(messages)
    print "hi"
    puts  messages.inspect
    print "hi2"    
    messages.each do |message|
#     self.create(article_id: message.article_id , motion: message.motion, latitud: message.latitud, longitud: message.longitud, radius: message.radius, message_time: message.message_time)
    end
  end
end
