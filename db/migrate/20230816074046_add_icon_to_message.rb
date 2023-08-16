class AddIconToMessage < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :icon, :string, after: :name
  end
end
