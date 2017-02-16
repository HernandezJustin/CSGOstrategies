class Strat < ApplicationRecord
  has_many :map_submissions
  has_many :users, through: :map_submissions
end
