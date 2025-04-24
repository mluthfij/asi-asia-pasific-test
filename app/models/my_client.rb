class MyClient < ApplicationRecord
  has_one_attached :client_logo

  extend FriendlyId
  friendly_id :name, use: :slugged
end
