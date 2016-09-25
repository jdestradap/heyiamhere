class AddLocationToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :latitud, :decimal, {:precision=>10, :scale=>6}
    add_column :messages, :longitud, :decimal, {:precision=>10, :scale=>6}
    add_column :messages, :radius, :integer
    add_column :messages, :message_time, :timestamp
  end
end
