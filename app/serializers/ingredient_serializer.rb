class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :food_group, :img_url
  has_many :recipes
end
