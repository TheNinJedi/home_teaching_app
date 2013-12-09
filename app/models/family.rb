class Family < ActiveRecord::Base
  belongs_to :route
  has_many :members
  
  attr_accessible :address
  # :fam_name, :h_o_h

  def name
    members.where(hh_order: 1).first.full_name
  end
end
#gem hashie - makes it easier to work with tables of data where a lot of the stuff could be blank or nil.