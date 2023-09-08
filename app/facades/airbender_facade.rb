class AirbenderFacade
  def self.find_members(nation)
    service = AirbenderService.new
    request = service.get_characters(nation)
    members = request.map do |character_data|
      Member.new(character_data) 
    end
  end
end