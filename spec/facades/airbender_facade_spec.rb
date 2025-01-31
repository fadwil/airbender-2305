require "rails_helper"

RSpec.describe AirbenderFacade do
  it "returns an array of Member objects" do
    members = AirbenderFacade.find_members("Fire Nation")

    expect(members).to be_an(Array)
    expect(members.first).to be_a(Member)
    expect(members.first.name).to be_a(String)
    expect(members.first.allies).to be_a(Array)
    expect(members.first.enemies).to be_a(Array)
    expect(members.first.affiliation).to be_a(String)
    expect(members.first.photo).to be_a(String)
  end
end