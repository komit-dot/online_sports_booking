class BookingDetailsController < ApplicationController
  def index
		@bookdetails = BookingDetail.all
	end

	def show
		@bookdetail = BookingDetail.find(params[:id])
	end

	def new
		@bookdetail = BookingDetail.new
	end

	def create
		@bookdetail = BookingDetail.new(bdetails_params)
	    respond_to do |format|
	      if @bookdetail.save
	        format.html { redirect_to sport_url(@sport), notice: "Slot for this events has been booked successfully." }
	        format.json { render :show, status: :created, location: @sport }
	      else
	        format.html { render :new, status: :unprocessable_entity }
	        format.json { render json: @sport.errors, status: :unprocessable_entity }
	      end
	    end
	end

  private

	def bdetails_params
    params.require(:bookingdetail).permit(:start_time, :end_time, :id)
  end
end
