class UsersController < ApplicationController
	load_and_authorize_resource
  def show
  end

    def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
end
