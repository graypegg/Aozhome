class User < ApplicationRecord
  has_many :things, -> { order created_at: :desc }

  def full_name
    "#{first_name} #{last_name}"
  end
end
