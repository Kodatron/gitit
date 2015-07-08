class PagesControllerController < ApplicationController

  layout :determine_layout

  def home
    render 'controlpanel/index' if user_signed_in?
  end

end
