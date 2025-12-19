class Continent < ApplicationRecord
  belongs_to :user

  has_many :continent_images, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
