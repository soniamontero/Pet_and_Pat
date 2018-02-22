class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
  end

  def edit
  end

  def show
  end
end
