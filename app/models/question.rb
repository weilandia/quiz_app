class Question < ActiveRecord::Base
  belongs_to :standard
  belongs_to :student

end
