class LeaningSite < ApplicationRecord
  belongs_to :user
  has_many :select_courses
  has_many :curriculums
end
