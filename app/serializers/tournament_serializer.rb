class TournamentSerializer < ActiveModel::Serializer
  attributes :name

  has_many :matches
end
