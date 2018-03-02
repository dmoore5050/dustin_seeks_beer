class BeersController < ApplicationController

  before_action :authenticate_admin!, except: [:index, :show]

  expose(:beers) { Beer.not_deleted }
  expose(:beer, scope: beers)
  expose(:all_beers) { Beer.all }

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    respond_to do |format|
      if beer.save
        format.html { redirect_to beer, notice: 'Beer was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if beer.update(beer_params)
        format.html { redirect_to beer, notice: 'Beer was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def purchase
    respond_to do |format|
      if beer.update_attribute(deleted_at: Time.zone.now)
        format.js
      else
        format.js
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_params
      params.require(:beer).permit(:name, :style, :brewer, :store, :desc, :deleted_at)
    end
end
