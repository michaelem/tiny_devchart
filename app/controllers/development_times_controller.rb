class DevelopmentTimesController < ApplicationController
	def index
		@dev_times = DevelopmentTime.all
	end

	def new
		@dev_time = DevelopmentTime.new
	end

	def create
		dev_time = DevelopmentTime.new
		dev_time
	end
end
