class AirbenderService
  def conn
    response = Faraday.new("https://last-airbender-api.fly.dev/")
  end

  def get_characters(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=100&page=1")
    JSON.parse(response.body, symbolize_names: true)
  end
end