class Message < ApplicationRecord
  validates :content, presence: true, length: { maximum: 140 }
  validates_associated :user, on: :create
  validates_associated :room, on: :create

  belongs_to :user
  belongs_to :room
end
