class Objective < ApplicationRecord
  belongs_to :user
  has_many :initiatives
end
