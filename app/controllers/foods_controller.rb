class FoodsController < ApplicationController

  def index
      @search_results = IngredientSearch.new(params[:q])
  end
end
