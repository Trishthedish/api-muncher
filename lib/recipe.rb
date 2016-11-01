class Recipe
  attr_reader :url, :name, :photo

  def initialize(url, name, photo)
    @url = url
    @name = name
    @photo = photo
  end

end
