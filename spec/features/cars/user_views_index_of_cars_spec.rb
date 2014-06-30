require_relative '../../rails_helper'

feature 'User views index of all cars.' do
  scenario 'All of a car\'s attributes are displayed.' do
    FactoryGirl.create(:car)

    visit cars_path

    expect(page).to have_content('A  2007 Chevy Cobalt.')
    expect(page).to have_content('Yellow, with 48000 miles.')
  end
end
