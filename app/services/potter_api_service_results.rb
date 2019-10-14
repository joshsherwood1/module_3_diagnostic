class PotterApiServiceResults

  def initialize(house)
    @house = house
  end

  def members
    response = conn.get('/v1/characters', key: ENV['POTTER_API_KEY'], house: @house)
    results = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://www.potterapi.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
