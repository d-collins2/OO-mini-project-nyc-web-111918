require_relative '../config/environment.rb'
require "date"
require_relative '../app/models/Recipe'
require_relative '../app/models/User'
require_relative '../app/models/Ingredient'
require_relative '../app/models/Allergen'
require_relative '../app/models/RecipeCard'
require_relative '../app/models/RecipeIngredient'

require "pry"
#recipes
r1 = Recipe.new("Pizza")
r2 = Recipe.new("Spaghetti and Meatballs")
r3 = Recipe.new("Sandwich")
r4 = Recipe.new("Jell-O")

#users
u1 = User.new("Damon")
u2 = User.new("Rachel")
u3 = User.new("Bob")
u4 = User.new("Sally")

#ingredients
i1 = Ingredient.new("cheese")
i2 = Ingredient.new("tomato sauce")
i3 = Ingredient.new("spaghetti")
i4 = Ingredient.new("bread")
i5 = Ingredient.new("meatballs")
i6 = Ingredient.new("turkey slices")
i7 = Ingredient.new("lettuce")
i8 = Ingredient.new("tomato")
i9 = Ingredient.new("peanut butter")
i10 = Ingredient.new("Jell-O")
i11 = Ingredient.new("squash")
i12 = Ingredient.new("pepperoni")
i13 = Ingredient.new("dough")


#allergens
a1 = Allergen.new(u1, i11)
a2 = Allergen.new(u3, i9)
a3 = Allergen.new(u3, i10)
a4 = Allergen.new(u3, i12)
a5 = Allergen.new(u3, i11)
a6 = Allergen.new(u3, i1)
a7 = Allergen.new(u4, i2)


#recipecards
rc1 = RecipeCard.new(u1, r1, 0, 2013)
rc2 = RecipeCard.new(u2, r2, 1, 1992)
rc3 = RecipeCard.new(u3, r3, 2, 1400)
rc4 = RecipeCard.new(u4, r3, 3, 2010)
rc5 = RecipeCard.new(u1, r2, 4, 1800)
rc6 = RecipeCard.new(u1, r3, 5, 2018)
rc7 = RecipeCard.new(u1, r4, 2, 2017)


#recipeingredients
ri1 = RecipeIngredient.new(r1, i1)
ri2 = RecipeIngredient.new(r1, i2)
ri3 = RecipeIngredient.new(r1, i13)
ri4 = RecipeIngredient.new(r2, i3)
ri5 = RecipeIngredient.new(r2, i2)
ri6 = RecipeIngredient.new(r2, i5)
ri7 = RecipeIngredient.new(r3, i1)
ri8 = RecipeIngredient.new(r3, i4)
ri9 = RecipeIngredient.new(r3, i6)
ri10 = RecipeIngredient.new(r4, i10)



binding.pry
