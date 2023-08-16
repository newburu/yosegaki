class Message < ApplicationRecord
  belongs_to :card
  belongs_to :user, optional: true
  belongs_to :owner, class_name: 'User', foreign_key: :user_id, optional: true

  mount_uploader :icon, ImageUploader
  mount_uploader :image, ImageUploader

  acts_as_paranoid
end
