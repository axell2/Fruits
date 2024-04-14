class Fruit < ApplicationRecord
  belongs_to :user
  validates :name,:color,:origin,:season,:price,presence: true
end
