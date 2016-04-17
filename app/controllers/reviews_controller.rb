class ReviewsController < ApplicationController
  before_action :set_event
  before_action :set_review, only: [:show, :update, :destroy]

  def show
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to @review
    else
      render 'edit'
    end
  end

  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_params)

    if review.save
      redirect_to review
    else
      render 'new'
    end
  end

  def destroy
    @review.destroy

    redirect_to :index
  end

  private

    def set_event
      @event = Event.find(params[:event_id])
    end

    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:id).permit(:date, :name, :organization_id)
    end
end
