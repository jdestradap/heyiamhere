class RemoveLocationToMessages < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:messages, :location, index: true)
  end
end
