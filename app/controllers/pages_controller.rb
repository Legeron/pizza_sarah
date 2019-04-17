class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @pizzas = MealCategory.pizzas
    @pastas = MealCategory.pastas
    @desserts = MealCategory.desserts
  end
end
