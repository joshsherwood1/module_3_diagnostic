class HogwartsHousesSearchResults
  def initialize(house)
    @house = house
  end

  def members
    get_potter_data(@house).map do |member_data|
      Member.new(member_data)
    end
  end

  def get_potter_data(house)
    PotterApiServiceResults.new(house).members
  end
end
