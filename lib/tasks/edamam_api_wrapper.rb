require 'httparty'
require 'awesome_print'

class Edamam_Api_Wrapper
  # # The BASE_URL is the beginning of every request.
  BASE_URL = "https://api.edamam.com/"
  app_id = ENV["app_id"]
  app_key = ENV["app_key"]

  def self.search_recipes
    url = BASE_URL + "search" + "?q=chicken&app_id=#{app_id}&app_key=#{app_key}"

    data = HTTParty.get(url)

  end


end
