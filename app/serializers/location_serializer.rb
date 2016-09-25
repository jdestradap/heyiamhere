class LocationSerializer < ActiveModel::Serializer
  attributes :id, :tracking, :start_date, :end_date, :latitud, :longitud
  belongs_to :article

end
