class FamiliesController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def new
    @family = Family.new
  end

  def create
    @family = Family.create(family_params)
    @family.users << current_user
    
    if @family.save
      redirect_to root_path
    end
  end

  private

  def family_params
    params.require(:family).permit(:name, :motto, :location, :origin_location, :start_year)
  end

end
