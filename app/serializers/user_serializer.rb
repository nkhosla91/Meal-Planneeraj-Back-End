class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :calories, :carbPercent, :fatPercent, :proteinPercent, :foods


    has_many :userfoods
    has_many :foods, through: :userfoods
    
  end 