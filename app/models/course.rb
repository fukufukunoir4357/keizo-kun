class Course < ApplicationRecord
  belongs_to :site
  has_many :favorites
  has_many :curriculums
  has_one :user, through: :favorites
end
