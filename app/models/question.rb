class Question < ApplicationRecord
  validates :content, :presence => true
  has_many :responses
  belongs_to :user
end
