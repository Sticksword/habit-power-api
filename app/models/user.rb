class User < ApplicationRecord
  has_many :objectives
  has_many :success_stories

  # follower_follows "names" the Follow join table for accessing through the follower association
  has_many :follower_follows, foreign_key: :follower_id, class_name: "Follow"
  # followee_follows "names" the Follow join table for accessing through the followee association
  has_many :followee_follows, foreign_key: :followee_id, class_name: "Follow"

  # source: :follower matches with the belong_to :follower identification in the Follow model
  has_many :followers, through: :followee_follows, source: :follower
  # source: :followee matches with the belong_to :followee identification in the Follow model
  has_many :following, through: :follower_follows, source: :followee
end
