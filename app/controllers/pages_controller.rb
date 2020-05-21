class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @beds = Bed.first(5)
  end

  def search
    if params[:search].blank?
      redirect_to(root_path, alert: "Empty field!") and return
    else
  end
end
end
