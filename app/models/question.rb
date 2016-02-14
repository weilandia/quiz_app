class Question < ActiveRecord::Base
  has_many :strand
  belongs_to :student
  belongs_to :quiz

end
