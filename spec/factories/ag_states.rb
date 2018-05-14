FactoryGirl.define do
  factory :ag_state, class: 'Ag::State' do
    name "MyString"
    ag_country_id 1
    iso "MyString"
  end
end
