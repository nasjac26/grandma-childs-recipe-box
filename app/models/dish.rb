class Dish < ApplicationRecord
    has_many :holiday_dishes
    has_many :holidays, through: :holiday_dishes
end
