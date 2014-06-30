require_relative '../../rails_helper'

feature 'User creates a new car.' do
  scenario 'Valid values are entered/selected.' do
    FactoryGirl.create(:manufacturer)

    visit new_car_path
    fill_in 'car_model_name', with: 'Cobalt'
    fill_in 'car_year', with: 2007
    fill_in 'car_mileage', with: 48_000
    fill_in 'car_color', with: 'Yellow'
    select 'Chevy', from: 'car_manufacturer_id'
    click_on 'Add Car'

    expect(page).to have_content('Car Added.')
    expect(Car.count).to eq(1)
  end
end
