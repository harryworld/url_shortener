class SiteController < ApplicationController

  def index
    flash.now[:alert] = "No URL yet"
  end

  def privacy
  end

  def terms
  end
end