class Question < ApplicationRecord
  enum status: { done: 0, active: 1 }
  enum category: { event: 1, reserve: 2 }

  belongs_to :user
  has_many :replies

  def to_json
    {
      id: self.id,
      user_name: self.user.name,
      title: self.title,
      description: self.description,
      category: self.category,
      status: self.status,
      replies: self.replies.map { |r| r.to_json }
    }
  end
end
