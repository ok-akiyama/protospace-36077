class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @name = user.name
    @profile = user.profile
    @occupation = user.occupation
    @position = user.position
    @user = User.find(params[:id])
    @prototypes = @user.prototypes.includes(:user) 
  end

end
