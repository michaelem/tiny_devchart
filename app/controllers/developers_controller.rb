class DevelopersController < ApplicationController
	def new
		@developer = Developer.new
	end

	def create
		@developer = Developer.new(developer_params)

		if @developer.save
			redirect_to root_path
		else
			render action:"new"
		end
	end

	def show
		@developer = Developer.find(params[:id])
	end

	def edit
		@developer = Developer.find(params[:id])
	end

	def update
		@developer = Developer.find(params[:id])
		if @developer.save!
			redirect_to developer_path(@developer)
		else
			render action:"edit"
		end
	end

	private
	def developer_params
		params.require(:developer).permit(:brand, :name)
	end
end

