class User < ApplicationRecord
  has_many :things

  def full_name
    "#{first_name} #{last_name}"
  end
end
