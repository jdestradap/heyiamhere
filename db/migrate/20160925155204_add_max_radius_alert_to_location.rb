class AddMaxRadiusAlertToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :max_radius_alert, :Integer
  end
end
