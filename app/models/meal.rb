class Meal < ApplicationRecord
  belongs_to :meal_category
  validates :name, presence: true
  validates :name, uniqueness: true

  monetize :price_cents
  mount_uploader :photo, PhotoUploader
end
