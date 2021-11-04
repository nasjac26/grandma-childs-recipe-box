class Holiday < ApplicationRecord
    has_many :holiday_dishes
    has_many :dish, through: :holiday_dishes

    validates :name, :month, :day, presence: true #requiring all fields
    validates :name, uniqueness: true
    validates :month, length: { in: 1..12 }
    validates :day, length: { in: 1..31 }
    validate :proper_name_case #if it is custom, it must be singular

    private
    
    def proper_name_case
        if self.name != self.name.titleize
            error.add(:name, "Dish name must be properly name cased")
        end
    end
end
