class DevelopersController < ApplicationController
	before_filter :set_developer, only: [:show, :edit, :update]
	before_filter :authenticate_user!, only: [:new, :create, :edit, :update]

	def index
		@developers = Developer.all
		authorize @developers
	end

	def new
		@developer = Developer.new
		authorize @developer
	end

	def create
		@developer = Developer.new(developer_params)
		authorize @developer

		if @developer.save
			redirect_to developer_path(@developer)
		else
			render action: :new
		end
	end

	def show
	end

	def edit
		authorize @developer
	end

	def update
		authorize @developer

		if @developer.save!
			redirect_to developer_path(@developer)
		else
			render action: :edit
		end
	end

	private
	def developer_params
		params.require(:developer).permit(:brand, :name)
	end

	def set_developer
		@developer = Developer.find( params[:id] )
	end
end

