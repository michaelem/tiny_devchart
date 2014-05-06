class FilmsController < ApplicationController
	def new
		@film = Film.new
	end

	def create
		@film = Film.new(params[:film])
		if @film.save
			redirect_to :show
		else
			render action:"new"
		end
	end

	def show
		@film = Film.find(params[:id])
	end

	def edit
		@film = Film.find(params[:id])
	end

	def update
		@film = Film.find(params[:id])
		if @film.save
			redirect_to film_path(@film)
		else
			render action:"edit"
		end
	end

	private
	film_params
		params.require(:film).permit(:brand, :iso, :name)
	end
end
