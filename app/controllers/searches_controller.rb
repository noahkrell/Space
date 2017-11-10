class SearchController < ActionController::Base

   def show
    if params[:search]
      @matched_spaces = Space.search_by_address(params[:search])
    end
  end


end