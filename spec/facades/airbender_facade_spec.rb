require "rails_helper"

RSpec.describe AirbenderFacade do
  it "returns an array of AirbenderCharacter objects" do
    members = AirbenderFacade.find_members("Fire Nation")
  end
end