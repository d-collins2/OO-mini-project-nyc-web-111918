class Ingredient
  attr_reader :name

  @@all = []


  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_common_allergen
    ingredient = nil
    ingredient_counter = 0
    #count? HASH
    count={}
    Allergen.all.each do |a|
      if count[a.ingredient].nil?
        count[a.ingredient] = 1
      else
        count[a.ingredient] += 1
      end

    end

    count.each do |i, num|
      if num > ingredient_counter
        ingredient_counter = num
        ingredient = i
      end
    end
    ingredient
  end


end
