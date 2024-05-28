class SportsController < ApplicationController
	def index
		@sports = Sport.search(params[:search])
	end

	def show
		@sport = Sport.find(params[:id])
	end

	def new
		@sport = Sport.new
	end

	def create
		@sport = Sport.new(sport_params)
    respond_to do |format|
      if @sport.save
        format.html { redirect_to sport_url(@sport), notice: "Sport was successfully created." }
        format.json { render :show, status: :created, location: @sport }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sport.errors, status: :unprocessable_entity }
      end
    end
	end

  private

	def sport_params
    params.require(:sport).permit(:name,  :city, :pincode, :address, :description, :search)
  end


end
