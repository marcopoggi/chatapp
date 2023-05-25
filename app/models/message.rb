class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  validates :content, presence: true, length: { maximum: 140 }
end
