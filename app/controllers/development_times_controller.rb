class DevelopmentTimesController < ApplicationController
	def index
		@dev_times = DevelopmentTime.all
	end

	def new
		@dev_time = DevelopmentTime.new
	end

	def create
		dev_time = DevelopmentTime.new( development_time_params )
		dev_time.save
	end

	private
	def development_time_params
		params.require(:development_time).permit(:developer_id, :dillution, :film_id, :iso, :notes, :rating, :seconds, :temperature)
	end
end
