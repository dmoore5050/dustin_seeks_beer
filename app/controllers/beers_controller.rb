class BeersController < ApplicationController

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
        format.json { render :show, status: :created, location: beer }
      else
        format.html { render :new }
        format.json { render json: beer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if beer.update(beer_params)
        format.html { redirect_to beer, notice: 'Beer was successfully updated.' }
        format.json { render :show, status: :ok, location: beer }
      else
        format.html { render :edit }
        format.json { render json: beer.errors, status: :unprocessable_entity }
      end
    end
  end


  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_params
      params.require(:beer).permit(:name, :style, :brewer, :store, :desc, :deleted_at)
    end
end
