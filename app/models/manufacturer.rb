class Manufacturer < ApplicationRecord
  has_many :things, -> { order created_at: :desc }
end
