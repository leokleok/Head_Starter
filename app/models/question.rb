class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :user
  belongs_to :education_level
  belongs_to :subject

end
