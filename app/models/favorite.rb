class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :site
  belongs_to :course
  belongs_to :curriculum
end
