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
    FactoryGirl.create(:manufacturer)

    visit new_manufacturer_path
    fill_in 'Name', with: 'Chevy'
    fill_in 'Country', with: 'USA'
    click_on 'Add Manufacturer'

    expect(page).to have_content('We couldn\'t save your manufacturer!')
  end

  scenario 'A field is left blank.' do
    visit new_manufacturer_path
    fill_in 'Name', with: 'Chevy'
    click_on 'Add Manufacturer'

    expect(page).to have_content('We couldn\'t save your manufacturer!')
  end
end
