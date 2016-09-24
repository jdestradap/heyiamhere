class Location < ApplicationRecord
  belongs_to :article
  has_many :messages

  def create 
    
  end
end
