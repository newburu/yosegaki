class Message < ApplicationRecord
  belongs_to :card
  belongs_to :user
  belongs_to :owner, class_name: 'User', foreign_key: :user_id, optional: true

  mount_uploader :image, ImageUploader
end
