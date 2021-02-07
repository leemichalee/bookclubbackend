class AddTitleToClubs < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :title, :string
  end
end
