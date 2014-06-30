# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    manufacturer 
    model_name "Cobalt"
    year 2007
    mileage 48000
    color "Yellow"
    description ""
  end
end
