class CreateTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :description
      t.integer :miles
      t.integer :national_park_id

      t.timestamps
    end
  end
end
