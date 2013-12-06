class Member < ActiveRecord::Base
  belongs_to :member
  belongs_to :vt_route
  
  # attr_accessible :title, :body

  class << self
  	def pull(path)
  		pool = CSV.table(path)
  		pool.each do |row|
  			member = Member.new
  			member.full_name = row[:full_name]
  			member.preferred_name = row[:preferred_name]
  			member.hh_position = row[:hh_position]
  			member.hh_order = row[:hh_order]
  			member.household_phone = row[:household_phone]
  			member.individual_phone = row[:individual_phone]
  			member.household_email = row[:household_email]
  			member.individual_email = row[:individual_email]
  			member.street_1 = row[:street_1]
  			member.street_2 = row[:street_2]
  			member.dp = row[:dp]
  			member.city = row[:city]
  			member.postal = row[:postal]
  			member.state_prov = row[:state_prov]
  			member.country = row[:country]
  			member.two_street_1 = row["2-street_1"]
  			member.two_street_2 = row["2-street_2"]
  			member.two_dp = row["2-D/P"]
  			member.two_city = row["2-city"]
  			member.two_zip = row["2-zip"]
  			member.two_state_prov = row["2-state_prov"]
  			member.two_country = row["2-country"]
  			member.ward_geo_code = row[:ward_geo_code]
  			member.sex = row[:sex]
  			member.priesthood = row[:priesthood]
  			member.married = row[:married]
  			member.save
  		end
  	end
  end
end
