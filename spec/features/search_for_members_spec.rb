require "rails_helper"

RSpec.describe "Search for members of a nation" do
  scenario "User searches for Fire Nation Members" do
    visit '/'
    
    select "Fire Nation", from: "nation" 
    click_button "Search For Members"

    expect(current_path).to eq("/search")

    expect(page).to have_content("Total Members: 97")

    within('ul.members-list') do
      expect(page).to have_selector('li', count: 25) # Assuming you want to check the first 25
      expect(page).to have_content('Name:')
      expect(page).to have_content('Allies:')
      expect(page).to have_content('Enemies:')
      expect(page).to have_content('Affiliations:')
    end
  end
end