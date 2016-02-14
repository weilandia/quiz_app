class Standard < ActiveRecord::Base
  has_many :questions
  belongs_to :strand

end
