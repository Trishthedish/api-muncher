class RecipesController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

# https://api.edamam.com/search?q=chicken&app_id=f2222748&app_key=776b85ac416c71fed03e509eafa77715

  def search
    # what is better string or symbol?
    @search_term = params[:query]
    @search_results = Edamam_Api_Wrapper.search_recipes(@search_term)

    render :search
  end

end
