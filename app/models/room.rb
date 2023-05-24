class Room < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :messages

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
end
