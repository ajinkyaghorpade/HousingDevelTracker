FactoryGirl.define do
  factory :ag_household_member, class: 'Ag::HouseholdMember' do
    household_id 1
    member_id 1
    head false
  end
end
