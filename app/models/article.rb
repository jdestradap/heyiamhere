class Article < ApplicationRecord
  belongs_to :user

  has_many :locations
  has_many :messages
end
