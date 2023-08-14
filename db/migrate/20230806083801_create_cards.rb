class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.references :user, null: false, foreign_key: true
      t.string :dear_name
      t.string :title
      t.string :image
      t.date :open_at

      t.timestamps
    end
  end
end
