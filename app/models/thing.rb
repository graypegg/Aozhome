class Thing < ApplicationRecord
  has_many_attached :images
  belongs_to :manufacturer
  belongs_to :user
end
