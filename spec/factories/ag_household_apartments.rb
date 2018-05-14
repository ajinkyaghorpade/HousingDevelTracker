FactoryGirl.define do
  factory :ag_household_apartment, class: 'Ag::HouseholdApartment' do
    moved_in "2018-05-14"
    moved_out "2018-05-14"
    cost 1.5
    ag_apartment nil
    ag_household nil
    ag_public_housing_devel nil
  end
end
