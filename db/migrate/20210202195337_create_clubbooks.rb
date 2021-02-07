class CreateClubbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :clubbooks do |t|
      t.integer :club_id
      t.integer :book_id

      t.timestamps
    end
  end
end
