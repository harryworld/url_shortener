class UrlController < ApplicationController
  protect_from_forgery with: :null_session

  def index
  end

  def create
    render :show
  end

end