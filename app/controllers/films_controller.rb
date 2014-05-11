class FilmsController < ApplicationController
	before_filter :set_film, only: [:show, :edit, :update]
	before_filter :authenticate_user!, only: [:new, :create, :edit, :update]

	def index
		@films = Film.all
		authorize @films
	end

	def new
		@film = Film.new
		authorize @film
	end

	def create
		@film = Film.new( film_params )
		authorize @film

		if @film.save
			redirect_to film_path( @film )
		else
			render action: :new
		end
	end

	def show
	end

	def edit
		authorize @film
	end

	def update
		authorize @film

		if @film.save
			redirect_to film_path(@film)
		else
			render action: :edit
		end
	end

	private
	def film_params
		params.require(:film).permit(:brand, :iso, :name)
	end

	def set_film
		@film = Film.find( params[:id] )
	end
end
