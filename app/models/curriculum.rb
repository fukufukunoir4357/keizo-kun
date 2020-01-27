class Curriculum < ApplicationRecord
  belongs_to :course_id
  belongs_to :user
  belongs_to :leaning_site
  belongs_to :select_course
  
end
