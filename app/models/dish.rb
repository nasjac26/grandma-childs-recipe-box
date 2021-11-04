class Dish < ApplicationRecord
    has_many :holiday_dishes
    has_many :holidays, through: :holiday_dishes

    validates :name, presence: true #Does not allow a blank string or a other flasey value for the column 


end
