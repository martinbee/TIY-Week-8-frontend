class UsersController < ApplicationController
  def new
  end

  def create
    @response = Http.post("https://skeletons-tiy-backend.herokuapp.com/users.json", json: {user:{email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation]}})
  end
end
