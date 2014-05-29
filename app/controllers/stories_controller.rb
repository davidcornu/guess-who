class StoriesController < ApplicationController
  def new
    @story = Story.new
  end

  def create
    @story = Story.new(create_params)

    if @story.save
      redirect_to story_path(@story)
    else
      render :new
    end
  end

  def show
    @story = Story.find(params[:id])
  end

  def random
    @story = Story.order("RAND()").first
    @vote = @story.votes.build
  end

  private

  def create_params
    params.require(:story).permit(:body, :age, :gender)
  end
end
