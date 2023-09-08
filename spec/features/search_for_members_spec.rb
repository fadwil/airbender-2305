require "rails_helper"

RSpec.describe "Search for members of a nation" do
  scenario "User searches for Fire Nation Members" do
    visit '/'
    
    select "Fire Nation", from: "nation" 
    click_button "Search For Members"

    expect(current_path).to eq("/search")

    expect(page).to have_content("Total members: 97")

    expect
  end
end