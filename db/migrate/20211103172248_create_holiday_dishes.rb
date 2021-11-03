class CreateHolidayDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :holiday_dishes do |t|

      t.timestamps
    end
  end
end
