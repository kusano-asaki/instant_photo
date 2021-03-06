class User < ApplicationRecord
  mount_uploader :face, FaceUploader

  validates :password, presence: true, length: { minimum: 6 }
  validates :face, presence: true
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  before_validation { email.downcase! }

  has_secure_password
  has_many :pictures
  has_many :favorites, dependent: :destroy
end
