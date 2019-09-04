class Micropost < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :content, length: { maximum: 140 }, presence: true
  validates :user_id, presence: true
  validate :picture_size

  belongs_to :user
  default_scope -> { order(created_at: :desc) }

  private

    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5mb")
      end
    end
end
