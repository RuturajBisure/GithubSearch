class SearchController < ApplicationController
  def index
  	if params[:username].present?
      username = params[:username]
      @user = Octokit.user(username) rescue ""
    end
    respond_to do |format|
    	format.html
    	format.json { render json: @user }
    end
  end

  def show
  	@user = Octokit.user(params[:id].to_i)
  end
end
