class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :leaning_site
  belongs_to :select_course
  belongs_to :curriculum
end
