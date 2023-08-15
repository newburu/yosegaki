class AddUserToMessage < ActiveRecord::Migration[7.0]
  def change
    add_reference :messages, :user, foreign_key: true, after: :card_id
  end
end
