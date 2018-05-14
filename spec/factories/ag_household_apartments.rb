FactoryGirl.define do
  factory :ag_household_apartment, class: 'Ag::HouseholdApartment' do
    moved_id "2018-05-13"
    moved_out "2018-05-13"
    cost 1.5
    apartment nil
    household nil
  end
end
