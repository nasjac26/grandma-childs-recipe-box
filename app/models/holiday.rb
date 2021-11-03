class Holiday < ApplicationRecord
    has_many :holiday_dishes
    has_many :dish, through: :holiday_dishes
end
