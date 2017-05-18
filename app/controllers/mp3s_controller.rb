class Mp3sController < ApplicationController
  def index
  	@mp3s = Mp3.all
  end

  def import
  	Mp3.import(params[:file])
  	redirect_to mp3s_url, notice: "Song Data imported"
  end	
end