class MealCategory < ApplicationRecord
  has_many :meals
  scope :pizzas, -> { find_by(name: "Pizza").meals }
  scope :pastas, -> { find_by(name: "Pâte").meals }
  scope :desserts, -> { find_by(name: "Dessert").meals }
end
