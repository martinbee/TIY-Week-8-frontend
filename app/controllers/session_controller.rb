class SessionController < ApplicationController
  def new
  end

  def create
    @response = Http.post("http://localhost:3000/auth.json", json: {email: params[:session][:email], password: params[:session][:password]})
  end

  def destroy
    log_out
    redirect_to :root
  end
end
