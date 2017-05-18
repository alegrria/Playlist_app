class UsersController < ApplicationController
  def index
  	@users = User.all

    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def import
  	User.import(params[:file])
  	redirect_to root_url, notice: "User Data imported"
  end	
end
