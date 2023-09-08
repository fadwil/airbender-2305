require "rails_helper"

RSpec.describe AirbenderService do
  it "connects to airbender api" do
    nation = "Fire Nation"
    service = AirbenderService.new.get_characters(nation)

    expect(service).to be_an(Array)
    expect(service[0]).to be_a(Hash)

    expect(service[0]).to have_key(:_id)
    expect(service[0][:_id]).to be_a(String)
    expect(service[0]).to have_key(:allies)
    expect(service[0][:allies]).to be_an(Array)
    expect(service[0]).to have_key(:enemies)
    expect(service[0][:enemies]).to be_an(Array)
    expect(service[0]).to have_key(:name)
    expect(service[0][:name]).to be_a(String)
    expect(service[0]).to have_key(:affiliation)
    expect(service[0][:affiliation]).to be_a(String)
  end
end