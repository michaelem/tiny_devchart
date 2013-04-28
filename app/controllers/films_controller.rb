class FilmsController < ApplicationController
	def new
		@film = Film.new
	end

	def create
		@film = Film.new(params[:film])
		if @film.save
			redirect_to root_path
		else
			render action:"new"
		end
	end
end
