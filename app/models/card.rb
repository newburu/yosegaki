class Card < ApplicationRecord
  belongs_to :user
  has_many :messages
  mount_uploader :image, ImageUploader
end
