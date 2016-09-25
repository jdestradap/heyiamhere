class LocationSerializer < ActiveModel::Serializer
  attributes :id, :tracking, :start_date, :end_date, :latitud, :longitud, :max_radius_alert
  belongs_to :article
end
