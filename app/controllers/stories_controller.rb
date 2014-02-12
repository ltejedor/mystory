class StoriesController < ApplicationController
	def index
	end

	def new
		@story = Story.new
	end

	def create
		@story = Story.new(story_params)
		if @story.save
			flash[:notice] = "Story has been created."
			redirect_to @story
		else
			#nothing yet
		end
	end

	def show
		@story = Story.find(params[:id])
	end


	private

	def story_params
		params.require(:story).permit(:title, :name, :town)
	end

 end