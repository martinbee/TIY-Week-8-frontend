class PostsController < ApplicationController


  def index
    response = Http.get("http://localhost:3000/posts.json")
    @posts = JSON.parse response
    @user_name = session[:user_name]
  end

  def new
    @user_id = session[:id]
  end

  def create
    @user_id = session[:id]
    @response = Http.post("http://localhost:3000/posts.json", json: {post:{content: params[:post][:content], user_id: params[:post][:user_id]}})
    @posts = JSON.parse @response
  end

end
