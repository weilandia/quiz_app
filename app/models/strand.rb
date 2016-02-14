class Strand < ActiveRecord::Base
  has_many :standards
  has_many :questions, through: :standards

end
