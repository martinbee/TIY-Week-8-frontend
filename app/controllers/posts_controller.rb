class PostsController < ApplicationController

  def index
    response = Http.get("https://skeletons-tiy-backend.herokuapp.com/skeletons.json")
    @posts = JSON.parse response
    @user_name = session[:user_name]
  end

  def new
  end

  def create
    @response = Http.post("https://skeletons-tiy-backend.herokuapp.com/skeletons.json", json: {skeleton:{content: params[:post][:content], user_id: params[:post][:user_id]}})
    @posts = JSON.parse @response
    @user_name = session[:user_name]
  end

end
