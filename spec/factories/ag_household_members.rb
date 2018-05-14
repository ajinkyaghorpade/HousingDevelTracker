FactoryGirl.define do
  factory :ag_household_member, class: 'Ag::HouseholdMember' do
    ag_household_id 1
    ag_resident_id 1
    head false
  end
end
