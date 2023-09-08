require "rails_helper"

RSpec.describe "Search for members of a nation" do
  scenario "User searches for Fire Nation Members" do
    visit '/'
    
    select "Fire Nation", from: "nation" 
    click_button "Search For Members"
  end
end