class SearchController < ApplicationController
  def index
    @members = AirbenderFacade.find_members(params[:nation])
  end
end