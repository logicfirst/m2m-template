require_relative './restaurant.rb'
require_relative './meal.rb'
require_relative './patron.rb'


og = Restaurant.new("Olive Garden", (5...25))
ob = Restaurant.new("OutBack", (10...50)) 
puts og.name
# puts og.price_range
# print Restaurant.all
puts og.price_range.cover?(10)

scott = Patron.new("Scott", 25)
kellie = Patron.new("Kellie", 50)
anne = Patron.new("Anne", 15)
# print Patron.all

# scott.budget_max = 50

# puts scott.name
# puts scott.budget_max

og.add_meal(scott, 90)
og.add_meal(kellie, 40)
# print Meal.all
ob.add_meal(anne, 10)

# print og.all_meals
# print og.all_meals.map do |meals|
#     meals.patron

print og.all_patrons
