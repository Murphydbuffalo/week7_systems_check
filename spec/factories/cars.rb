# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    manufacturer nil
    model_name "MyString"
    year 1
    mileage 1
    color "MyString"
    description "MyString"
  end
end
