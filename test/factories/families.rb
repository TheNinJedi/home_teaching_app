# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :family do
    fam_name 	{ Faker::Name.last_name }
    h_o_h 		{ Faker::Name.name }
    address 	{ Faker::Address.street_address }
  end
end
