class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredients=(name)
    self.ingredients.find_or_create_by(name: name)
  end


end
