class HolidayDish < ApplicationRecord
    belongs_to :dish
    belongs_to :holiday
end
