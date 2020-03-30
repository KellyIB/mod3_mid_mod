class SearchController < ApplicationController
  def index
    render locals: {
      search_results: IngredientSearch.new(params[:ingredient]) #??
    }
  end
end
