class Site < ApplicationRecord
  
  has_many :courses, ->{ order(:id)}
  has_many :curriculums, through: :courses
  has_many :favorites
  has_many :users, through: :favorites
  
end
