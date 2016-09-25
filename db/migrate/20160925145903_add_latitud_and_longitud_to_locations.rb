class AddLatitudAndLongitudToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :latitud, :decimal, {:precision=>10, :scale=>6}
    add_column :locations, :longitud, :decimal, {:precision=>10, :scale=>6}
    add_column :locations, :max_radius_alert, :integer
  end
end
