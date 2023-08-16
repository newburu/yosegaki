class Card < ApplicationRecord
  belongs_to :user
  belongs_to :owner, class_name: 'User', foreign_key: :user_id

  has_many :messages, dependent: :destroy
  mount_uploader :image, ImageUploader

end
