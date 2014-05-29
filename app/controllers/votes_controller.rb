class VotesController < ApplicationController
  before_filter :load_story

  def create
    @vote = @story.votes.build(create_params)

    unless @vote.save
      flash[:error] = "Could not create your vote. Please try again."
    end

    redirect_to story_path(@story)
  end

  private

  def load_story
    @story = Story.find(params[:story_id])
  end

  def create_params
    params.require(:vote).permit(:gender)
  end
end
