class SuccessStorySerializer
  include FastJsonapi::ObjectSerializer

  attributes :body_json, :created_at, :updated_at

  belongs_to :user
end
