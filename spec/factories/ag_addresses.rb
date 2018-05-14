FactoryGirl.define do
  factory :ag_address, class: 'Ag::Address' do
    project_name "MyString"
    street_name "MyString"
    city "MyString"
    state 1
    zip_code "MyString"
    country 1
  end
end
