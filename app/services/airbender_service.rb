class AirbenderService
  def conn
    response = Faraday.new("https://last-airbender-api.fly.dev/")
  end

  def get_characters(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    JSON.parse(response.body, symbolize_names: true)
  end
end