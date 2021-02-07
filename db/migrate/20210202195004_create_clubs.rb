class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.text :description
      t.string :genre
      t.integer :owner_id

      t.timestamps
    end
  end
end
