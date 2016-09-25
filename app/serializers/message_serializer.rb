class MessageSerializer < ActiveModel::Serializer
  attributes :id, :motion, :article_id, :latitud, :longitud, :radius, :message_time
  
  belongs_to :article
end
