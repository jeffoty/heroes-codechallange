class SinglePowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :supername

  has_many :powers
end
