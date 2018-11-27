class Recipe
  attr_reader :name

  @@all = []


  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_popular
    count={}
    RecipeCard.all.each do |rc|
      if count[rc.recipe].nil?
        count[rc.recipe] = 1
      else
        count[rc.recipe] += 1
      end
    end
    count.max_by{|k,v| v}.first
  end

  def allergens #From Ingredients Method: return ingredients that anyone could be allergic to
    allergic = Allergen.all.map {|a| a.ingredient}
    allergic.map { |ingredient| ingredient if self.ingredients.include?(ingredient)}.compact

  end


  def users #M-M Relationship
    RecipeCard.all.select {|rc| rc.user if rc.recipe == self}
  end

  def ingredients #M-M Relationship
    RecipeIngredient.all.map {|ri| ri.ingredient if ri.recipe == self}.compact
  end

                    #ingredient, recipe
  def add_ingredients(ingredients) #<<-- takes array
    ingredients.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end
end
