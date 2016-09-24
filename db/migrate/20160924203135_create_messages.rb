class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.boolean :motion
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
