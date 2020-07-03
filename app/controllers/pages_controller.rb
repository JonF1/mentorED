class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:welcome]

  def welcome
    if user_signed_in? == true
      if current_user.type == "Student"
        redirect_to("/students/#{current_user.id}/dashboard")
      else
        redirect_to("/mentors/#{current_user.id}/dashboard")
      end
    end
  end
end
