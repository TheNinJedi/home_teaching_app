class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
    	t.string :full_name
			t.string :preferred_name
			t.string :hh_position
			t.string :hh_order
			t.string :household_phone
			t.string :individual_phone
			t.string :household_email
			t.string :individual_email
			t.string :street_1
			t.string :street_2
			t.string :dp
			t.string :city
			t.string :postal
			t.string :state_prov
			t.string :country
			t.string :two_street_1
			t.string :two_street_2
			t.string :two_dp
			t.string :two_city
			t.string :two_zip
			t.string :two_state_prov
			t.string :two_country
			t.string :ward_geo_code
			t.string :sex
			t.string :priesthood
			t.string :married
			t.belongs_to :family
			t.belongs_to :vt_route
      t.timestamps
    end
  end
end
