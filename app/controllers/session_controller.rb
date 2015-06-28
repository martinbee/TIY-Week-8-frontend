class SessionController < ApplicationController
  def new
  end

  def create
    @response = Http.post("https://skeletons-backend.herokuapp.com/auth.json", json: {email: params[:session][:email], password: params[:session][:password]})
  end

  def destroy
    log_out
  end
end
