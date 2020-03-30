class PropublicaService

  def members_by_state(ingredient)
    ingredient = format(ingredient)
    get_json("https://api.nal.usda.gov/fdc/v1/search?#{ENV[usda_key]}&generalSearchInput=#{ingredient}")
  end

  private

    def get_json(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)[:results]
    end

    def conn
      conn = Faraday.new(url)
    end

    def format(ingredient)


    end
end
