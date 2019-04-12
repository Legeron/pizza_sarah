class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @meals = Meal.all
  end

  def show
  end
  def new
    @meal = Meal.new
  end
  def create
    @meal = Meal.new(pizza_params)
    if @meal.save
      redirect_to meal_path(@meal)
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @meal.update(meal_params)
      redirect_to meal_path(@meal)
    else
      render :new
    end
  end
  def destroy
    @meal.destroy
  end
  private
  def set_meal
    @meal = Meal.find(params[:id])
  end
  def meal_params
    params.require(:meal).permit(:name, :description, :ingredient, :meal_category_id, :price)
  end
end

