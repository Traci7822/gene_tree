class FamiliesController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def new
    @family = Family.new
  end

  def create
    @family = Family.new(params[:family])
    @family.users << current_user

    if @family.save
    end
  end

end
