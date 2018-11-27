class User
  attr_reader :name

  @@all = []

  

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    RecipeCard.all.map {|rc| rc.recipe if rc.user == self}
  end

  def add_recipe_card(recipe, rating)
    RecipeCard.new(self, recipe, rating)
  end

  def allergens
    Allergen.all.map {|a| a.ingredient if a.user == self}.compact
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def top_three_recipes
    my_recipe_cards = RecipeCard.all.map {|rc| rc if rc.user == self}.compact
    my_recipe_cards.sort_by{|rc| rc.rating}[-3..-1]
  end


  def most_recent_recipe
    newest_recipe = nil
    newest_date = 0
    RecipeCard.all.each do |r|
      if r.user == self && r.date > newest_date
        newest_date = r.date
        newest_recipe = r.recipe
      end
    end
    newest_recipe
  end

  def safe_recipes
    recipes = Recipe.all
    allergic = []
      self.allergens.each do |ingredient|
        RecipeIngredient.all.each {|ri| allergic << ri.recipe if ingredient == ri.ingredient}
      end
      recipes.delete_if{|recipe| allergic.include?(recipe)}
  end

end
