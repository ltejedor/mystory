class StoriesController < ApplicationController
	def index
		@stories = Story.all
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

	def destroy
		@story = Story.find(params[:id])
		@story.destroy

		flash[:notice] = "Story has been deleted."

		redirect_to stories_path
	end


	private

	def story_params
		params.require(:story).permit(:title, :name, :town, :image)
	end

 end