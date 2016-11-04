require 'test_helper'
require 'edamam_api_wrapper'
require 'recipe'

class Edamam_Api_WrapperTest < ActionController::TestCase

  test "can retrieve recipes from API will return a non-empty array when reasonable term used." do

    VCR.use_cassette("search_results") do
      search_results = Edamam_Api_Wrapper.search_recipes("juice")

      assert search_results.is_a? Array
      assert search_results.length > 0

      search_results.each do |recipe|
        assert recipe.is_a? Recipe
      end
    end
  end

# not fully flushed out logic.
  # test "search returns the correct length of array(based on API call)" do
  #   VCR.use_cassette("limit_100") do
  #
  #   end
  # end

  # test "what happens when you enter just spaces"

    test "blank search, made to recipes, returns array with nothing in it" do
      VCR.use_cassette('blank_search') do
        search_results = Edamam_Api_Wrapper.search_recipes(nil)
        assert_empty(search_results)
      end
    end
    # Found test about tested this hypothetical test "test what happens when you enter just spaces"




   test "what happens when muliple words our entered." do
     #http://localhost:3000/recipes/search?utf8=%E2%9C%93&query=apple+gin+smoke this search returns only 2 entries.
     VCR.use_cassette("three_words") do
      search_results = Edamam_Api_Wrapper.search_recipes("apple gin smoke")
      assert_not_empty(search_results)
      assert_equal(search_results.length, 2)
     end
   end


  #
  # test "Retrieves nill when the token is wrong" do
  #   VCR.use_cassette("") do
  #     search_results = Edamam_Api_Wrapper.search_recipes ""
  #     assert search_results == nil
  #   end
  # end

# Not sure this is necessary. 

  # test "can send properly formattd msg" do
  #   VCR.use_cassette("get_recipe") do
  #     response = Edamam_Api_Wrapper.get_recipe("tes")
  #
  #     assert response["ok"]
  #     assert response["message"]["type"] == "message"
  #     asset response["message"]["subtype"] == "bot_message"
  #   end
  # end






end
