require_relative '../../rails_helper'

feature 'User creates a new manufacturer.' do 
  scenario 'Valid name and country are entered.' do
    visit new_manufacturer_path
    fill_in 'Name', with: 'Chevy'
    fill_in 'Country', with: 'USA'
    click_on 'Add Manufacturer'

    expect(page).to have_content('Manufacturer Added.')
    expect(Manufacturer.count).to eq(1)
  end

  scenario 'Unavailable value is entered.' do
    chevy = FactoryGirl.create(:manufacturer)

    visit new_manufacturer_path
    fill_in 'Name', with: 'Chevy'
    fill_in 'Country', with: 'USA'
    click_on 'Add Manufacturer'

    expect(page).to have_content('That manufacturer is already in the database.')
  end

  scenario 'A field is left blank.' do
    visit new_manufacturer_path
    fill_in 'Name', with: 'Chevy'
    click_on 'Add Manufacturer'

    expect(page).to have_content('Please provide a name and a country.')
  end
end
