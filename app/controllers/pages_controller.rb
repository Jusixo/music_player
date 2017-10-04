class PagesController < ApplicationController
  def landing
    @playlist = Playlist.last
    @playlists = Playlist.all
  end

  def index
  end
end
