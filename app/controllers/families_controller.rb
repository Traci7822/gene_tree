class FamiliesController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  
  def create
    @family = Family.new(params[:family])
    @family.users << current_user

    if @family.save
    end
  end

end
