class TagSerializer < ActiveModel::Serializer
  attributes :name, :slug, :id
  has_many :opportunities
  has_many :profiles
end
