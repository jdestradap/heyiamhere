class MessageSerializer < ActiveModel::Serializer
  attributes :motion, :article_id 
  
  belongs_to :article
end
