class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @parameters_from_url = params[:rahel]
    @searched_query = params[:search]
  end
end
