class DevelopersController < ApplicationController
	before_filter :set_developer, only: [:show, :edit, :update]
	def new
		@developer = Developer.new
	end

	def create
		@developer = Developer.new(developer_params)

		if @developer.save
			redirect_to developer_path(@developer)
		else
			render action: :new
		end
	end

	def show
	end

	def edit
	end

	def update
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

