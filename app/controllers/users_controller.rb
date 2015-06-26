class UsersController < ApplicationController
  def new
  end

  def create
    @response = Http.post("http://localhost:3000/users.json", json: {user:{email: params[:user][:email], password: params[:user][:password], password: params[:user][:password_confirmation]}})
  end
end
