class Question < ApplicationRecord
  enum status: { inactive: 0, active: 1 }
  enum category: { event: 1, reserve: 2 }

  belongs_to :user
  has_many :replies
end
