class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.boolean :tracking
      t.references :article, foreign_key: true
      t.timestamp :start_date
      t.timestamp :end_date

      t.timestamps
    end
  end
end
