class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
    return redirect_to controller: 'users', action: 'new' unless @user.save
  end

end
