class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end


  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create
    @appearance.guest = Guest.find(params[:appearance][:guest_id])
    redirect_to episodes_path(@episode)
  end


end
