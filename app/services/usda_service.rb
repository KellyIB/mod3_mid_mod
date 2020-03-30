class UsdaService

  def foods_with_ingredient(ingredient)
    ingredient = format(ingredient)
    get_json("https://api.nal.usda.gov/fdc/v1/search?#{ENV[usda_key]}&generalSearchInput=#{ingredient}")
  end

  private

    def get_json(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)[:results]
    end

    def conn
      conn = Faraday.new(url: url)
    end

    def format(ingredient)
      binding.pry
      if ingredient.split.size > 1
        ingredient.split.each do |word|
          ingredient = word + " + "
        end
      end
        ingredient = ingredient.delete_suffix(" + ")
    end
end
