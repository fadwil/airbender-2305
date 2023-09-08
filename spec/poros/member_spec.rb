require "rails_helper"

RSpec.describe Member do
  it "exists and has attributes" do
    character = Member.new({
      name: "Character 1",
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/4/45/Music_teacher.png/revision/latest?cb=20140602125803",
      allies: ["Ally 1", "Ally 2"],
      enemies: ["Enemy 1"],
      affiliation: "Affiliation 1"
    })

    expect(character).to be_a(Member)
    expect(character.name).to eq("Character 1")
    expect(character.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/4/45/Music_teacher.png/revision/latest?cb=20140602125803")
    expect(character.allies).to eq(["Ally 1", "Ally 2"])
    expect(character.enemies).to eq(["Enemy 1"])
    expect(character.affiliation).to eq("Affiliation 1")
  end
end