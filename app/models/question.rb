class Question < ActiveRecord::Base
  has_many :strands
  belongs_to :student
  belongs_to :quiz

end
