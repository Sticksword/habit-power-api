class InitiativeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :score, :created_at, :updated_at
end
