class Recipe
  att_reader :url, :name, :photo

  def initilize(url, name, photo)
    @url = url
    @name = name
    @photo = photo
  end
  
end
