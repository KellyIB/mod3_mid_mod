class Food
  attr_reader :name,
              :ups_code,
              :description,
              :brand_owner,
              :ingredients


  def initialize(attributes = {})
    @name       = attributes[:name]
    @ups_code       = attributes[:ups_code]
    @description      = attributes[:description]
    @brand_owner   = attributes[:brand_owner]
    @ingredients   = attributes[:ingredients]
  end

end
