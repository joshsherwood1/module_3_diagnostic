class SearchController < ApplicationController
  def index
   @members = HogwartsHousesSearchResults.new(params[:house]).members
  end
end
