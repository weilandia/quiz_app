class Strand < ActiveRecord::Base
  has_many :standards
  belongs_to :strand

end
