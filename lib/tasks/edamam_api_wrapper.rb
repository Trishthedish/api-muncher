require 'httparty'
require 'awesome_print'

class Edamam_Api_Wrapper
  # # The BASE_URL is the beginning of every request.
  BASE_URL = "https://api.edamam.com/"
  APP_ID = ENV["APP_ID"]
  APP_KEY = ENV["APP_KEY"]

  def self.search_recipes(search_term)
    url = BASE_URL + "search" + "?q=#{search_term}&app_id=#{APP_ID}&app_key=#{APP_KEY}"

    data = HTTParty.get(url)

    search_results = []

    data["hits"].each do |hit|
      recipe = hit["recipe"]
      # using recipe to get hash.

      url = recipe["url"]
      name = recipe["label"]
      photo = recipe["image"]
      search_results << Recipe.new(url, name, photo)
    end
    search_results
  end

# https://api.edamam.com/search?q=chicken&app_id=f2222748&app_key=776b85ac416c71fed03e509eafa77715


  end


end
