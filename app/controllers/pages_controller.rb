class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :write_modal]
  def home
    @users = User.where.not(latitude: nil, longitude: nil)

    markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user.id })
      }
    end
    @markers = current_user ? markers : []
    @pizzas = MealCategory.pizzas
    @pastas = MealCategory.pastas
    @desserts = MealCategory.desserts
  end

  def write_modal
    @user = User.find(params[:id])

    respond_to do |format|
        format.html { redirect_to root_path }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
    end

  end
end
