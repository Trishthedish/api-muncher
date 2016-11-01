class Recipe
  attr_reader :url, :name, :photo, :ingredientLines

  def initialize(url, name, photo, ingredientLines)
    @url = url
    @name = name
    @photo = photo
    @ingredientLines = ingredientLines

    if url == nil || name == nil || photo == nil || url == "" || name == "" || photo == ""

    end


  end

end
