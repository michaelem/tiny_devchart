class DevelopmentTimesController < ApplicationController
	def index
		@development_times = DevelopmentTime.all
	end

	def new
		@development_time = DevelopmentTime.new
	end

	def create
		@development_time = DevelopmentTime.new( development_time_params )
		if @development_time.save
			redirect_to development_times_path
		else
			render action: :edit
		end
	end

	def edit
		@development_time = DevelopmentTime.find( params[:id] )
	end

	private
	def development_time_params
		params.require(:development_time).permit(:developer_id, :dillution, :film_id, :iso, :notes, :rating, :seconds, :temperature)
	end
end
