class RecommendationsController < ApplicationController

  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
    respond_to do |format|
      format.html { redirect_to root_path}
      format.js
    end
  end

  def create
    @recommendations = Recommendation.all
    @recommendation = Recommendation.new(rec_params)
    if @recommendation.save
      respond_to do |format|
        format.html { redirect_to root_path}
        format.js
      end
    else
      flash[:notice] = "Please fill out all fields!"
      respond_to do |format|
        format.html { redirect_to root_path}
        format.js { render "fail" }
      end
    end
  end

  private
  def rec_params
    params.require(:recommendation).permit(:title, :description, :url, :image, :recommender)
  end

end
