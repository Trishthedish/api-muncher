class Recipe
  attr_reader :url, :link, :r_source, :name, :photo, :uri, :ingredientLines

  def initialize(url, r_source, link, name, photo, uri, ingredientLines)
    @url = url
    @link = link
    @r_source = r_source
    @name = name
    @photo = photo
    @uri = uri
    @ingredientLines = ingredientLines

    if url == nil || name == nil || photo == nil || uri = nil || ingredientLines == nil || url == "" || name == "" || photo == "" || uri = "" || ingredientLines == "" || link == nil || link == "" || r_source == nil || r_source == ""

    end


  end

end
