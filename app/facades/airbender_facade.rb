class AirbenderFacade
  def find_members(nation)
    service = AirbenderService.new
    request = service.get_characters(nation)
    members = request.map do |character_data|
      AirbenderCharacter.new(character_data) 
    end
  end
end