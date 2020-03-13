class Reply < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def to_json
    { id: self.id, text: self.text, user_name: self.user.name  }
  end
end
