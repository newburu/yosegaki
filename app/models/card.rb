class Card < ApplicationRecord
  belongs_to :user
  belongs_to :owner, class_name: 'User', foreign_key: :user_id

  has_many :messages, dependent: :destroy
  mount_uploader :image, ImageUploader

  acts_as_paranoid

  # TITLEタグ用のAlias
  def title_tag
    "#{self.dear_name}さん「#{self.title}」"
  end

  # 公開中？
  def open?
    self.open_at.nil? || self.open_at <= Date.today
  end

end
