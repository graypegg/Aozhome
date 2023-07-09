class Thing < ApplicationRecord
  has_one_attached :image
  belongs_to :manufacturer
  belongs_to :user

  validates :name, presence: true
  validates :purchase_date, comparison: { less_than: Time.now }
  validates :quantity, numericality: { only_integer: true }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :weight, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :image, presence: true

  [:price, :weight].each do |unit_method|
    define_method "total_#{unit_method}" do
      quantity * send(unit_method)
    end
  end
end
