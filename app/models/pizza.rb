class Pizza < ApplicationRecord
  belongs_to :base
  validates :name, presence: true
  validates :name, uniqueness: true

  monetize :price_cents
  mount_uploader :photo, PhotoUploader
end
