class SearchesController < ApplicationController
  
  def index
    if params[:search].present?
      @searches = flickr.photos.search(text: params[:search])
    end
  end
end


