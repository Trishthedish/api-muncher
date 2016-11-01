class HomepagesController < ApplicationController
  def index
    @search_results = Edamam_Api_Wrapper
  end

  def create
  end

  def new
  end
end
