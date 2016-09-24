class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :locations
  belongs_to :user
end
