class HogwartsHousesSearchResults
  def initialize(house)
    @house = house
  end

  def members
      conn = Faraday.new(url: "https://www.potterapi.com") do |faraday|
        faraday.adapter Faraday.default_adapter
      end

      response = conn.get('/v1/characters', key: ENV['POTTER_API_KEY'], house: @house)

      results = JSON.parse(response.body, symbolize_names: true)
      data = results.map do |member_data|
        Member.new(member_data)
      end
    end
end
