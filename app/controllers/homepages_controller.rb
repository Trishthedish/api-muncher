class HomepagesController < ApplicationController
  def index
    @search_results = Edamam_Api_Wrapper.search_recipes("chicken")
  end

  def create
  end

  def new
  end
end
