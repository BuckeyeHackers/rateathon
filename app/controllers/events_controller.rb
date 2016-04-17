class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  def index
    if params[:sort] == "date"
      @events = Event.order(date: :desc)
    else
      @events = Event.all
    end
  end

  def show
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
