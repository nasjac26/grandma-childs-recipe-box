class Dish < ApplicationRecord
    has_many :holiday_dishes
    has_many :holidays, through: :holiday_dishes

    validates :food, :category, presence: true #Does not allow a blank string or a other flasey value for the column 
    validates :food, uniqueness: true
    validate :proper_name_case #if it is custom, it must be singular

    private
    
    def proper_name_case
        if self.food != self.food.titleize
            error.add(:food, "Dish name must be properly name cased")
        end
    end



end
