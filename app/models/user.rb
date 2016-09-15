class User < ApplicationRecord
  has_many :posts
  has_secure_password
  acts_as_voter

  validates :first_name, :last_name, presence: true, length: {maximum: 30}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
            presence:   true,
            format:     { with: VALID_EMAIL_REGEX },
            uniqueness: true,
            length:     { maximum: 255 }
end
