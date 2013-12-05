class Family < ActiveRecord::Base
  belongs_to :route
  has_many :members, as: :multiassignable
  
  attr_accessible :address, :fam_name, :h_o_h
end
