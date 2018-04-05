class SearchesController < ApplicationController
  
  def index
    @searches = flickr.photos.search(text: params[:search])
  end
end

# https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg

# https://farm1.staticflickr.com/890/41203363202_c4a0bfb61f.jpg
