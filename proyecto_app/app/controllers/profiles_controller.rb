class ProfilesController < ApplicationController
  def show
  	@users = User.all
  	@user = User.find_by(email: params[:email])
  end

  def edit
  	@user = User.find_by(email: params[:email])
  end

end
