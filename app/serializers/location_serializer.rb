class LocationSerializer < ActiveModel::Serializer
  attributes :id, :tracking, :start_date, :end_date
  belongs_to :article

end
