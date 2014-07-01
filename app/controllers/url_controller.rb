class UrlController < ApplicationController
  protect_from_forgery with: :null_session

  def index
  end

  def create
    @url = Url.new
    @url.original = params[:original]

    if @url.save
      redirect_to root_path
    else
      render :text, "Error"
    end
  end

end