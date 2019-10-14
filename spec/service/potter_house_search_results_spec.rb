require 'rails_helper'

RSpec.describe 'potter api service' do
  it 'returns members' do
    service = HogwartsHousesSearchResults.new("Gryffindor")
    array_of_members_data = service.members
    expect(service).to be_an_instance_of(HogwartsHousesSearchResults)
    expect(array_of_members_data).to be_a(Array)
    expect(array_of_members_data.first).to be_a(Member)
    expect(array_of_members_data.first.name).to be_a(String)
    expect(array_of_members_data.count).to eq(41)
  end
end
