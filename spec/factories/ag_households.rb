FactoryGirl.define do
  factory :ag_household, class: 'Ag::Household' do
    owned false
    subsidized false
  end
end
