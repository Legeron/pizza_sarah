class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :ingredient
      t.integer :price_cents
      t.string :photo
      t.references :base, foreign_key: true
      t.boolean :chausson, default: false

      t.timestamps
    end
  end
end
