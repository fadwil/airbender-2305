class Member
  attr_reader :name,
              :photo,
              :allies,
              :enemies,
              :affiliation
  
  def initialize(character_data)
    @name = character_data[:name]
    @photo = character_data[:photoUrl]
    @allies = character_data[:allies]
    @enemies = character_data[:enemies]
    @affiliation = character_data[:affiliation]
  end
end