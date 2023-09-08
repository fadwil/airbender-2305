require "rails_helper"

RSpec.describe AirbenderCharacter do
  it "exists and has attributes" do
    character = AirbenderCharacter.new({
      name: "Character 1",
      allies: ["Ally 1", "Ally 2"],
      enemies: ["Enemy 1"],
      affiliation: "Affiliation 1"
    })

    expect(character).to be_a(AirbenderCharacter)
    expect(character.name).to eq("Character 1")
    expect(character.allies).to eq(["Ally 1", "Ally 2"])
    expect(character.enemies).to eq(["Enemy 1"])
    expect(character.affiliation).to eq("Affiliation 1")
  end
end