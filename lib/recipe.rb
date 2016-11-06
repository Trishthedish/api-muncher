class Recipe
  attr_reader :url, :link, :r_source, :diet_labels, :health_labels, :name, :photo, :uri, :ingredientLines

  def initialize(url, r_source, diet_labels, link, health_labels, name, photo, uri, ingredientLines)
    @url = url
    @link = link
    @r_source = r_source
    @diet_labels = diet_labels
    @health_labels = health_labels
    @name = name
    @photo = photo
    @uri = uri
    @ingredientLines = ingredientLines

    if url == nil || name == nil || photo == nil || uri = nil || ingredientLines == nil || url == ""  || name == "" || photo == "" || uri = "" || ingredientLines == "" || link == nil || link == "" || r_source == nil || r_source == "" || diet_labels == nil || diet_labels == "" || health_labels == nil || health_labels == ""

    end


  end

end
