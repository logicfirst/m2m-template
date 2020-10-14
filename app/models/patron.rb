
class Patron

    @@all = []

    attr_reader :name
    attr_accessor :budget_max
    
    def initialize(name, budget_max)
        @name = name
        @budget_max = budget_max
        @@all << self
    end

    def self.all
        return @@all
    end

    # def add_meal(restaurant, total)
    #     Meal.new(restaurant, self, total)
    # end




end