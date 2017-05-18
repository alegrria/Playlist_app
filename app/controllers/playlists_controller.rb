class PlaylistsController < ApplicationController
  def index
  	@playlists = Playlist.all
  end

  def import
  	Playlist.import(params[:file])
  	redirect_to playlists_url, notice: "Playlist Data imported"
  end	
end