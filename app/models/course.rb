class Course < ApplicationRecord
  belongs_to :user
  has_many :sections
  mount_uploader :image, :courses, ImageUploader
  has_many :enrollments

  validates :title, presence: true
  validates :description, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
  

  def free?
    cost.zero?
  end

  def premium?
    ! free?
  end
end

