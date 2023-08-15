class Message < ApplicationRecord
  belongs_to :card
  mount_uploader :image, ImageUploader
end
