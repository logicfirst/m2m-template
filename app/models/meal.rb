
class Meal

    attr_reader :restaurant, :patron, :total

    @@all = []

    def initialize(restaurant, patron, total)
        @restaurant = restaurant
        @patron = patron
        @total = total
        @@all << self

    end

    def self.all
        return @@all
    end


 attr_reader :patron


 def patron
    @patron
 end 


end