json.extract! message, :id, :card_id, :name, :title, :image, :message, :created_at, :updated_at
json.url message_url(message, format: :json)
