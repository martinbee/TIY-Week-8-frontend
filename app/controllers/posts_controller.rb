class PostsController < ApplicationController

  def index
    response = Http.get("http://localhost:3000/skeletons.json")
    @posts = JSON.parse response
    @user_name = session[:user_name]
  end

  def new
  end

  def create
    @response = Http.post("http://localhost:3000/skeletons.json", json: {skeleton:{content: params[:post][:content], user_id: params[:post][:user_id]}})
    @posts = JSON.parse @response
    @user_name = session[:user_name]
  end

end
