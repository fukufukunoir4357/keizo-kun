class Curriculum < ApplicationRecord
  belongs_to :course
  has_one :site, through: :course
  has_many :favorites
  has_one :user, through: :favorites
end
