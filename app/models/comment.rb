class Comment < ApplicationRecord
  belongs_to :address
  validates :dateofbirth , presence: true 
  validates :body , presence: true 
end
