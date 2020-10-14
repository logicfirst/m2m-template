require 'pry'
class Restaurant

        @@all = []

        attr_reader :name
        attr_accessor :price_range

    def initialize(name, price_range)
        @name = name
        @price_range = price_range
        @@all << self
    
    end

    def self.all
        return @@all
    end

    def add_meal(patron, total)
        Meal.new(self, patron, total)
    end

    def all_meals
        Meal.all.select do |meals|
         meals.restaurant == self
        end
    end

    def all_patrons
        self.all_meals.map do |meals|
            meals.patron
        end
        

        # binding.pry
    end
        
            

    
end


# def price_in_budget

#     self.all_meals_at_this_restaurant.each do |meal|
#         if meal.patron.budget_max > meal.restaraunt.price_range

#             return "Hope you enjoyed the meal!"

#             else 

#             return "Have fun washing dishes!"



# def price_in_budget(patron)
#     # did we stay within our budget
#     if Patron.budget_max
