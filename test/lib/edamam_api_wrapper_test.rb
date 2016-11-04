require 'test_helper'
require 'edamam_api_wrapper'

class EdamamApiWrapperTest < ActionController::TestCase

  test "can retrieve recipes from API" do
    VCR.use_cassette("search_results") do
      search_results = EdamamApiWrapper.search_recipes

      assert search_results.is_a Array
      assert search_results.length > 0

      search_results.each do |recipe|
        assert recipe.is_a?
        Recipe
      end
    end
  end











  
end
