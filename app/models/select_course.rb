class SelectCourse < ApplicationRecord
  belongs_to :user
  belongs_to :leaning_site
  has_many :curriculums
end
