class User < ApplicationRecord
  has_many :questions
  has_one :reply
end
