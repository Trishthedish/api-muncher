class Recipe
  attr_reader :url, :link, :name, :photo, :uri, :ingredientLines

  def initialize(url, link, name, photo, uri, ingredientLines)
    @url = url
    @link = link
    @name = name
    @photo = photo
    @uri = uri
    @ingredientLines = ingredientLines

    if url == nil || name == nil || photo == nil || uri = nil || ingredientLines == nil || url == "" || name == "" || photo == "" || uri = "" || ingredientLines == "" || link == nil || link == ""

    end


  end

end
