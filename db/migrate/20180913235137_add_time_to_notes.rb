class AddTimeToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :created_at, :datetime, null: false
  end
end
