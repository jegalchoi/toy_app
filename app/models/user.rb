class User < ApplicationRecord
  validates :name, :email, presence: true

  has_many :microposts
end
