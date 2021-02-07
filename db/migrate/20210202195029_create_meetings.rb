class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.integer :club_id
      t.string :zoom
      t.text :description

      t.timestamps
    end
  end
end
