class UserfoodSerializer < ActiveModel::Serializer
    attributes :id, :food_id, :user_id, :created_at, :mealtime
    

    belongs_to :food

end