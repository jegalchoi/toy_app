class Micropost < ApplicationRecord
  validates :content, length: { maximum: 140 }
  validates :content, presence: true

  belongs_to :user
end
