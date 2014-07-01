class UrlController < ApplicationController
  protect_from_forgery with: :null_session

  def index
  end

  def create
    @url = Url.new
    @url.original = params[:original]

    if @url.save
      render :show
    else
      render :text, "Error"
    end
  end

end