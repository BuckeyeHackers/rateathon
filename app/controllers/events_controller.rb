class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  def index
    if params[:sort] == "rating"
      @events = Event.all.sort_by { |x| -x.rating }
    else
      @events = Event.order(:date)
    end
  end

  def show
    @reviews = @event.reviews
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.new(event_params)

    if event.save
      redirect_to event
    else
      render 'new'
    end
  end

  def destroy
    @event.destroy

    redirect_to :index
  end

  private

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:id).permit(:date, :name, :organization_id)
    end
end
