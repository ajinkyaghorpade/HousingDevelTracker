FactoryGirl.define do
  factory :ag_address, class: 'Ag::Address' do
    project_name "MyString"
    street_name "MyString"
    city "MyString"
    ag_state_id 1
    zip_code "MyString"
    ag_country_id 1
  end
end
