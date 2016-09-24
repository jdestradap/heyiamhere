class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :cellphone, :email
  has_many :articles
end
