class Strand < ActiveRecord::Base
  has_many :questions
  belongs_to :standard

end
