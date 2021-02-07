class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.string :publisher
      t.string :genre

      t.timestamps
    end
  end
end
