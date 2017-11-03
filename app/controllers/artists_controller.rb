class ArtistsController < ApplicationController
  get '/artists' do
    @artists = Artist.all
    erb :index2
  end

  get '/artists/:slug' do
    @artist = Artist.find_by_slug(params[:slug])
    erb :show
  end
end
