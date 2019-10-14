require 'rails_helper'

describe 'A registered user' do
  it 'I can see list of five github repos with name of each repo linked to repo on github if I have a github_token' do
    #json_response = File.open('./fixtures/potter_data.json')
    #stub_request(:get, 'https://www.potterapi.com/v1/characters').to_return(status: 200, body: json_response)

    #user = create(:user)

    #allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/'

    #click_on "Gryffindor"
    select "Gryffindor", from: :house

    click_on "Search For Members"

    expect(current_path).to eq("/search")

    expect(page).to have_content("18 Members")
  end
end

# As a user,
# When I visit "/"
# And I Select "Griffindor" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see a total of the number of members for that house. (18 for Griffindor)
# Then I should see a list of 18 members
#
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
