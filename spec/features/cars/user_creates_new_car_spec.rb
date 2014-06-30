require_relative '../../rails_helper'

feature 'User creates a new car.' do 
  scenario 'Valid values are entered/selected.' do
    visit new_car_path
    fill_in 'Model', with: 'Cobalt'
    fill_in 'Year', with: 2007
    fill_in 'Mileage', with: 48000
    fill_in 'Color', with: 'Yellow'
    select 'Chevy', from: 'manufacturer'
    click_on 'Add Car'

    expect(page).to have_content('Car Added.')
    expect(Car.count).to eq(1)
  end
end
