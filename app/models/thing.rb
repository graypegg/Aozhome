class Thing < ApplicationRecord
  has_one_attached :image
  belongs_to :manufacturer
  belongs_to :user

  validates :name, presence: true
  validates :purchase_date, comparison: { less_than: Time.now }
  validates :quantity, numericality: { only_integer: true }
end
