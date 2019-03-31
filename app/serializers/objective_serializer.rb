class ObjectiveSerializer
  include FastJsonapi::ObjectSerializer

  attributes :title, :description, :score, :length, :state, :created_at, :updated_at

  belongs_to :user
end
