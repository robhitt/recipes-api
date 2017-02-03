class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :style, :img_url
  has_many :ingredients
  
end
