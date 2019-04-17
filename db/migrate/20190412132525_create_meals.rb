class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :ingredient
      t.integer :price_cents
      t.string :photo
      t.string :description
      t.references :meal_category, foreign_key: true

      t.timestamps
    end
  end
end
