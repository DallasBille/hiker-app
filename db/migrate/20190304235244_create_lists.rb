class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.integer :trail_id
      t.integer :user_id

      t.timestamps
    end
  end
end
