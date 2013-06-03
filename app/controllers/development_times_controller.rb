class DevelopmentTimesController < ApplicationController
	def index
		@dev_times = DevelopmentTime.all
	end

	def new
		@dev_time = DevelopmentTime.new
	end

	def create
		dev_time = DevelopmentTime.new(params[:development_time])
		dev_time.save
	end

	def search
	end
end
