require_relative '../../rails_helper'

feature 'User views index of all manufacturers.' do 
  scenario 'All manufacturers display their name and country.' do
    chevy = FactoryGirl.create(:manufacturer)

    visit manufacturers_path

    expect(page).to have_content('Chevy - USA')
  end
end
