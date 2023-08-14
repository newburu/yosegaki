class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.references :card, null: false, foreign_key: true
      t.string :name
      t.string :title
      t.string :image
      t.text :message

      t.timestamps
    end
  end
end
