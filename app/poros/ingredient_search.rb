class IngredientSearch
  attr_reader :ingredient

  def initialize(ingredient)
    @ingredient = ingredient
  end

  def foods
    service = UsdaService.new
    @foods ||= service.foods_with_ingredient(@ingredient).map do |food_data|
      Food.new(food_data)
    end
  end

  private
    attr_reader :ingredient

end
