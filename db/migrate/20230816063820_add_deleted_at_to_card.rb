class AddDeletedAtToCard < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :deleted_at, :datetime
    add_index :cards, :deleted_at
  end
end
