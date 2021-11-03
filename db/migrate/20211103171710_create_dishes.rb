class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :food
      t.string :category
      t.boolean :vegetarian
      t.boolean :gluten_free

      t.timestamps
    end
  end
end
