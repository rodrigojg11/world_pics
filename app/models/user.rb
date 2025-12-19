class User < ApplicationRecord
  has_secure_password

  has_many :continents, dependent: :destroy
  has_many :continents_images, through: :continents
end
