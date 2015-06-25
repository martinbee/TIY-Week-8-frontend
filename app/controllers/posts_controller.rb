class PostsController < ApplicationController
  def index
    response = Http.get("http://localhost:3000/posts.json")
    @posts = JSON.parse response
  end
end
