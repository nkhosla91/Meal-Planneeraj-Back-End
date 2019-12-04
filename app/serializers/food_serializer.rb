class FoodSerializer < ActiveModel::Serializer
    attributes :id, :name, :carbs, :fat, :protein, :calories

    
end
