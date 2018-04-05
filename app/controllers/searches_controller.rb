class SearchesController < ApplicationController
  
  def index
    @searches = flickr.photos.getRecent
  end
end
